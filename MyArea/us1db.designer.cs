﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан программой.
//     Исполняемая версия:4.0.30319.42000
//
//     Изменения в этом файле могут привести к неправильной работе и будут потеряны в случае
//     повторной генерации кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MyArea
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="test1")]
	public partial class us1dbDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region Определения метода расширяемости
    partial void OnCreated();
    partial void Insertus1(us1 instance);
    partial void Updateus1(us1 instance);
    partial void Deleteus1(us1 instance);
    #endregion
		
		public us1dbDataContext() : 
				base(global::System.Configuration.ConfigurationManager.ConnectionStrings["test1ConnectionString"].ConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public us1dbDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public us1dbDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public us1dbDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public us1dbDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<us1> us1
		{
			get
			{
				return this.GetTable<us1>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.us1")]
	public partial class us1 : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _Id;
		
		private System.DateTime _data;
		
		private string _oper;
		
		private string _summ;
		
    #region Определения метода расширяемости
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnIdChanging(int value);
    partial void OnIdChanged();
    partial void OndataChanging(System.DateTime value);
    partial void OndataChanged();
    partial void OnoperChanging(string value);
    partial void OnoperChanged();
    partial void OnsummChanging(string value);
    partial void OnsummChanged();
    #endregion
		
		public us1()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_Id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int Id
		{
			get
			{
				return this._Id;
			}
			set
			{
				if ((this._Id != value))
				{
					this.OnIdChanging(value);
					this.SendPropertyChanging();
					this._Id = value;
					this.SendPropertyChanged("Id");
					this.OnIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_data", DbType="Date NOT NULL")]
		public System.DateTime data
		{
			get
			{
				return this._data;
			}
			set
			{
				if ((this._data != value))
				{
					this.OndataChanging(value);
					this.SendPropertyChanging();
					this._data = value;
					this.SendPropertyChanged("data");
					this.OndataChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_oper", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string oper
		{
			get
			{
				return this._oper;
			}
			set
			{
				if ((this._oper != value))
				{
					this.OnoperChanging(value);
					this.SendPropertyChanging();
					this._oper = value;
					this.SendPropertyChanged("oper");
					this.OnoperChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_summ", DbType="NVarChar(50) NOT NULL", CanBeNull=false)]
		public string summ
		{
			get
			{
				return this._summ;
			}
			set
			{
				if ((this._summ != value))
				{
					this.OnsummChanging(value);
					this.SendPropertyChanging();
					this._summ = value;
					this.SendPropertyChanged("summ");
					this.OnsummChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
