<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelerikDataListExperiment.aspx.cs" Inherits="Bryan_Test.TelerikDataListExperiment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
</head>
<body>
	<form id="form1" runat="server">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
        <telerik:RadCodeBlock runat="server" ID="radCodeBlock">
        <script type="text/javascript">
            $(document).ready(function() {
                var hdnField = $("#<%= hdnWidth.ClientID %>");
                hdnField.value = $(document).width();
                
            })
        </script>
            </telerik:RadCodeBlock>
		<telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
        <asp:HiddenField runat="server" ID="hdnWidth"/>
	<div style="min-width: 1024px;">
		My Telerik Data List: 
        <telerik:RadButton runat="server" ID="btnShowList" OnClick="btnShowList_OnClcik" Text="Show List"></telerik:RadButton>
        <telerik:RadButton runat="server" ID="btnShowGrid" Text="Show Grid" OnClick="btnShowGrid_OnClick"></telerik:RadButton>
		<br/>
		<div id="ListContainerDiv" style="float: left; width: 75%">
            <div id="dataStuff" style="display: none">
			<div style="width: 200px; float: right">
				<telerik:RadDataPager ID="radPager" PagedControlID="rlvMyListView" EnableEmbeddedSkins="True" PageSize="25" runat="server">
					<Fields>
						<telerik:RadDataPagerButtonField FieldType="Prev" />
						<telerik:RadDataPagerButtonField FieldType="Numeric" />
						<telerik:RadDataPagerButtonField FieldType="Next" />
					</Fields>
				</telerik:RadDataPager>            
			</div>
			<telerik:RadListView ID="rlvMyListView" runat="server" OnNeedDataSource="rlvMyListView_NeedDataSource" ItemPlaceholderID="PLaceHolder" AllowPaging="True" PageSize="25">
				<LayoutTemplate>
					<fieldset style="width: 98%">
						<legend>Just like the example</legend>
						<asp:Panel runat="server" ID="PlaceHolder"></asp:Panel>
					</fieldset>
				</LayoutTemplate>
				<ItemTemplate>
					
					<div style="float: left; width: 300px">
						<br/>
						First Name: <%# Eval("FirstName") %> <br/>
						
						Last Name: <%# Eval("LastName") %> <br/>

						Date of Brith: <%# Eval("DateOfBirth") %>
						
						<br/>

					</div>
					
				</ItemTemplate>
			</telerik:RadListView> 

			<telerik:RadAjaxPanel runat="server" ID="pnlGrid">
			<telerik:RadGrid runat="server" ID="rgPeople" AllowPaging="True"  OnNeedDataSource="rgPeople_NeedDataSource" Visible="False" >
				<MasterTableView>
					<Columns>
						<telerik:GridTemplateColumn HeaderText="FIrst Name">
							<ItemTemplate>
								<%# Eval("FirstName") %>    
							</ItemTemplate>
							
						</telerik:GridTemplateColumn>
						<telerik:GridTemplateColumn HeaderText="Last Name">
							<ItemTemplate>
								<%# Eval("LastName") %>
							</ItemTemplate>
						</telerik:GridTemplateColumn>
						<telerik:GridDateTimeColumn DataField="DateOfBirth"/>
					</Columns>
				</MasterTableView>
			</telerik:RadGrid>        
					</telerik:RadAjaxPanel>       
            </div>
		 </div>
		<div style="width: 2%; height: 100%;"></div>
		<div style="height: 600px; width: 23%; background-color: grey; float:right;">
			Some Other list: <br/>
			<div style="width:250px; height: 300px; background-color: blue; margin: 0 auto">
				test
			</div>
		</div>
	</div>
		
		<telerik:RadAjaxManager runat="server" ID="radAjaxManeger">
			<AjaxSettings>
				<telerik:AjaxSetting AjaxControlID="radPager">
					<UpdatedControls>
						 <telerik:AjaxUpdatedControl ControlID="rlvMyListView"/>
                         <telerik:AjaxUpdatedControl ControlID="radPager"/>
					 </UpdatedControls>
				</telerik:AjaxSetting>
                <telerik:AjaxSetting AjaxControlID="btnShowGrid">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="rgPeople"/>
						 <telerik:AjaxUpdatedControl ControlID="rlvMyListView"/>
                         <telerik:AjaxUpdatedControl ControlID="radPager"/>
                    </UpdatedControls>                    
                </telerik:AjaxSetting>                
                <telerik:AjaxSetting AjaxControlID="btnShowList">
                    <UpdatedControls>
                        <telerik:AjaxUpdatedControl ControlID="rgPeople"/>
						 <telerik:AjaxUpdatedControl ControlID="rlvMyListView"/>
                         <telerik:AjaxUpdatedControl ControlID="radPager"/>
                    </UpdatedControls>                    
                </telerik:AjaxSetting>
			</AjaxSettings>
		</telerik:RadAjaxManager>
	</form>
</body>
</html>
