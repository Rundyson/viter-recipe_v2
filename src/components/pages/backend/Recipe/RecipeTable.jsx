import {
  setIsAdd,
  setIsArchive,
  setIsConfirm,
  setIsDelete,
  setIsRestore,
} from "@/components/store/storeAction";
import { StoreContext } from "@/components/store/storeContext";
import { Archive, ArchiveRestore, FilePenLine, Trash2 } from "lucide-react";
import React from "react";
import LoadMore from "../partials/LoadMore";
import ModalConfirm from "../partials/modals/ModalConfirm";
import ModalDelete from "../partials/modals/ModalDelete";
import Pills from "../partials/Pills";
import useQueryData from "@/components/custom-hook/useQueryData";
import SpinnerTable from "../partials/spinners/SpinnerTable";
import TableLoader from "../partials/TableLoader";
import IconNoData from "../partials/IconNoData";
import IconServerError from "../partials/IconServerError";
import ModalArchive from "../partials/modal/ModalArchive";
import ModalRestore from "../partials/modal/ModalRestore";

const RecipeTable = ({ setItemEdit }) => {
  const { store, dispatch } = React.useContext(StoreContext);
  const [isActive, setIsActive] = React.useState(0);
  const [id, setId] = React.useState(null);

  const {
    isLoading,
    isFetching,
    error,
    data: result,
  } = useQueryData(
    `/v2/recipe`, // endpoint
    "get", // method
    "recipe"
  );

  let counter = 1;

  const handleDelete = (item) => {
    dispatch(setIsDelete(true));
    setId(item.recipe_aid);
  };
  const handleRestore = (item) => {
    dispatch(setIsConfirm(true));
    setIsActive(1);
    setId(item.recipe_aid);
  };
  const handleArchive = (item) => {
    dispatch(setIsConfirm(true));
    setIsActive(0);
    setId(item.recipe_aid);
  };
  const handleEdit = (item) => {
    dispatch(setIsAdd(true));
    setItemEdit(item);
  };

  return (
    <>
      <div className="mt-10 bg-secondary rounded-md p-4 border border-line relative">
        {!isLoading || (isFetching && <SpinnerTable />)}{" "}
        <div className="table-wrapper custom-scroll">
          <table>
            <thead>
              <tr>
                <th>#</th>
                <th>Status</th>
                <th>Title</th>
                <th>Category</th>
                <th>Level</th>
                <th></th>
              </tr>
            </thead>
            <tbody>
              {/* {((isLoading && !isFetching) || result?.data.length === 0) && (
                                <tr>
                                  <td colSpan="100%">
                                    {isLoading ? (
                                      <TableLoader count={30} cols={6} />
                                    ) : (
                                      <IconNoData />
                                    )}
                                  </td>
                                </tr>
                              )}
                           
                           {error && (
                                <tr>
                                  <td colSpan="100%">
                                    <IconServerError />
                                  </td>
                                </tr>
                              )} */}

              {result?.count > 0 &&
                result.data.map((item, key) => (
                  <tr key={key}>
                    <td>{counter++}</td>
                    <td>
                      <Pills isActive={item.recipe_is_active} />
                    </td>
                    <td>{item.recipe_title}</td>
                    <td className="capitalize">{item.recipe_category}</td>
                    <td className="capitalize">{item.recipe_level}</td>
                    <td>
                      <ul className="table-action ">
                        {item.recipe_is_active ? (
                          <>
                            <li>
                              <button
                                className="tooltip"
                                data-tooltip="Edit"
                                onClick={() => handleEdit(item)}
                              >
                                <FilePenLine />
                              </button>
                            </li>
                            <li>
                              <button
                                className="tooltip"
                                data-tooltip="Archive"
                                onClick={() => handleArchive(item)}
                              >
                                <Archive />
                              </button>
                            </li>
                          </>
                        ) : (
                          <>
                            <li>
                              <button
                                className="tooltip"
                                data-tooltip="Restore"
                                onClick={() => handleRestore(item)}
                              >
                                <ArchiveRestore />
                              </button>
                            </li>
                            <li>
                              <button
                                className="tooltip"
                                data-tooltip="Delete"
                                onClick={() => handleDelete(item)}
                              >
                                <Trash2 />
                              </button>
                            </li>
                          </>
                        )}
                      </ul>
                    </td>
                  </tr>
                ))}
            </tbody>
          </table>
          <LoadMore />
        </div>
      </div>

      {store.isDelete && (
        <ModalDelete mysqlApiDelete={`/v2/recipe/${id}`} queryKey={"recipe"} />
      )}
      {store.isArchive && (
        <ModalArchive
          setIsArchive={setIsArchive}
          mysqlEndpoint={`/v2/recipe/active/${id}`}
          queryKey={"recipe"}
        />
      )}

      {store.isRestore && (
        <ModalRestore
          setIsRestore={setIsRestore}
          mysqlEndpoint={`/v2/recipe/active/${id}`}
          queryKey={"recipe"}
        />
      )}
    </>
  );
};

export default RecipeTable;
