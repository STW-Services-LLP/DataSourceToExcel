Imports System.IO

Partial Class _mysql
    Inherits System.Web.UI.Page

    Public Overloads Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)
    End Sub

    Protected Sub export_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles export.Click

        Dim sw As New StringWriter()
        Dim hw As New System.Web.UI.HtmlTextWriter(sw)
        Dim hf As HtmlForm = New HtmlForm()
        Response.ContentType = "application/vnd.ms-excel"
        Response.AddHeader("content-disposition", "attachment;filename=Clients.xls")
        Response.Charset = ""
        EnableViewState = False
        Controls.Add(hf)
        hf.Controls.Add(myGrid)
        hf.RenderControl(hw)
        Response.Write(sw.ToString())
        Response.End()
        sw.Dispose()
        hw.Dispose()
        hf.Dispose()

        sw = Nothing
        hw = Nothing
        hf = Nothing

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        myGrid.FooterRow.Cells(3).Text = myGrid.Rows.Count & " results."
    End Sub
End Class
