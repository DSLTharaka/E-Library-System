using System;
using System.Data;

namespace WebApplication1
{
    internal class sqlConnection
    {
        public sqlConnection(string strcon)
        {
        }

        public ConnectionState State { get; internal set; }

        internal void Open()
        {
            throw new NotImplementedException();
        }
    }
}