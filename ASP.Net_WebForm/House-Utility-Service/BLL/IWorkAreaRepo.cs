using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace House_Utility_Service.BLL
{
     public  interface IWorkAreaRepo
    {
        ICollection<WorkAreaDTO> GetAll();
        WorkAreaDTO Get(int id);
        void Insert(WorkAreaDTO dto);
        void Update(WorkAreaDTO dto);
        void Delete(WorkAreaDTO dto);
        int WorkAreaCount();
    }
}
