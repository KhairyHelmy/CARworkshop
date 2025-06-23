



<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><link rel="stylesheet" type="text/css" href="/eMAXRNRBARAKAH/DXR.axd?r=0_2604,1_66,1_67,1_68,0_2611,1_284,0_2525,1_283,0_2532,0_1818,0_1823,0_1929,0_1934-yw8An" /><title>
	Invoice Sales
</title><link rel="stylesheet" type="text/css" href="../Stylesheet/master.css?test=clearcache500" /><link rel="stylesheet" type="text/css" href="../Stylesheet/nav.css?test=clearcache500" />
    


    

    <style>
        @media (max-width: 370px) {
            #spanSystemName {
                display: none !important;
            }
        }
        /*        body {

        }
        * {
              font-family: Google Sans,arial,sans-serif;
        }*/

        .table-responsive {
            width: 100%;
            height: 100%;
            overflow: auto;
        }

        .Resize {
            resize: both;
            height: 38px;
        }

        .ListingBox {
            margin: 0px 0px 0px 10px;
            padding: 5px;
            border-radius: 0px;
        }

        .switch {
            position: relative;
            display: inline-block;
            width: 50px;
            height: 24px;
        }

            .switch input {
                opacity: 0;
            }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

            .slider:before {
                position: absolute;
                content: "";
                height: 16px;
                width: 16px;
                left: 4px;
                bottom: 4px;
                background-color: white;
                -webkit-transition: .4s;
                transition: .4s;
            }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:focus + .slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked + .slider:before {
            -webkit-transform: translateX(26px);
            -ms-transform: translateX(26px);
            transform: translateX(26px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 34px;
        }

            .slider.round:before {
                border-radius: 50%;
            }

        /*input[type=checkbox] {
            zoom: 1.5;
        }*/

        #btnFeedback img {
            margin-bottom: 0px !important;
        }

        .form-lookup-table {
            padding: 0.375rem 1rem;
        }

        .toast-top-center {
            top: 12px;
            margin: 0 auto;
            left: 50%;
        }

        .remove-padding {
            padding: 0px !important;
        }

        .dxrpHeader_Moderno {
            /* background-color: white !important;*/
            color: black !important;
            /* font-size: large !important;*/
            font-weight: 500 !important;
            /*font-family:Arial, sans-serif !important;*/
        }

        /*to control the gridview in listing hyperlink, put in master page*/
        .dxgvControl_MaterialCompact a {
            color: #165F62 !important;
            text-decoration: underline;
            font: 14px 'Roboto Regular', Helvetica, 'Droid Sans', Tahoma, Geneva, sans-serif ;
                font-weight: bolder !important;
        }

            .dxgvControl_MaterialCompact a:hover {
                color: #28B4B9 !important;
                text-decoration: underline;
                font: 14px 'Roboto Regular', Helvetica, 'Droid Sans', Tahoma, Geneva, sans-serif ;
                font-weight: bolder !important;
            }

        .disabled .dxeTAR {
            pointer-events: none;
        }

            .disabled .dxeTAR .dxichCellSys {
                pointer-events: all;
            }

        .makeItBlack {
            color: black;
            outline-color: black;
        }
    </style>

    <script>

        function displayDateTime() {
            defaultStatus = 'Powered By Webmax Technologies Sdn Bhd';

            var p = document.getElementById('dateTimeParam');
            if (p.innerHTML.trim().length > 0) {
                var params = p.innerHTML.split(';');
                var year = parseInt(params[0]);
                var month = parseInt(params[1]);
                var day = parseInt(params[2]);
                var hour = parseInt(params[3]);
                var minute = parseInt(params[4]);
                var second = parseInt(params[5]);

                setDateTime(year, month, day, hour, minute, second);
                startLiveTime(document.getElementById('spanDateTime')); //Please refer to "JavaScript/LiveTime/js".
            }
        }

        function confirm_exit() {
            if (confirm("Are you sure you want to exit? System will close the browser after exit.") == true) {
                parent.location.href = window.location.protocol + "//" + window.location.hostname + "/" + window.location.pathname.split('/')[1] + "/logout.aspx";
            }
        }

        function autoResizeTextArea() {
            var textarea = document.querySelector('textarea');
            textarea.addEventListener('keydown', autosize);
            function autosize() {
                var el = this;
                setTimeout(function () {
                    el.style.cssText = 'height:auto; padding:0';
                    // for box-sizing other than "content-box" use:
                    // el.style.cssText = '-moz-box-sizing:content-box';
                    el.style.cssText = 'height:' + el.scrollHeight + 'px';
                }, 0);
            }
        }

        function dxComboBox_KeyDown(s, e) { //Allow dxComboBox to clear selection.
            if (e.htmlEvent.keyCode === 46 || e.htmlEvent.keyCode === 8) {
                s.SetSelectedIndex(-1);
            } else if (e.htmlEvent.keyCode === 8) {
                var text = s.GetInputElement().value;
                if (text.length <= 1) {
                    s.SetSelectedIndex(-1);
                }
            }
        }

        function txtCustomDocumentNo_Focused(input) {
            var actionMode = input.getAttribute("action-mode");
            if (actionMode === null || actionMode === 'create') {
                //input.placeholder = '(System Auto Generate)';
                var runningNo = input.value.trim().toUpperCase();
                if (runningNo === '(SYSTEM AUTO GENERATE)') {
                    input.value = '';
                }
            } else {
                //input.placeholder = '';
            }
        }
        function txtCustomDocumentNo_Unfocused(input) {
            var actionMode = input.getAttribute("action-mode");
            if (actionMode === null || actionMode === 'create') {
                //input.placeholder = '(System Auto Generate)';
                var runningNo = input.value.trim();
                if (runningNo === '') {
                    input.value = '(System Auto Generate)';
                }
            } else {
                //input.placeholder = '';
            }
        }
        function ShowLoginWindow() {
            pcLogin.Show();
        }

    </script>
    <script>
        function showErrorAlert() {
            Swal.fire({
                position: "center",
                icon: "error",
                title: "Please select at least 1 Branch!",
                showConfirmButton: true,
                showCancelButton: false
            });
        }
        function OnCheckedChanged(s, e) {
            //alert("Checkbox state changed. New state: " + s.GetChecked());
            if (s.GetChecked()) {
                chkSelectedBranch.SelectAll();
            } else {
                chkSelectedBranch.UnselectAll();
            }
        }
    </script>
    <script type="text/javascript">

        localStorage.setItem("branchClick", 1);
        var rootUrl = localStorage.getItem("urlPath");

        //Main session worker param
        const myWorker = new SharedWorker(rootUrl + '/Javascript/webWorker.js');
        const workerPort = myWorker.port;
        //Local param

        //Exucate this function if timer below zero
        function executeFunction() {
            var url = localStorage.getItem("timeoutURL");
            window.location = url;
        }

        function executeFunctionLogOut() {
            var url = localStorage.getItem("logoutURL");
            window.location = url;
        }

        // Handle the click event to reset the counter
        document.onmousemove = function () {
            // Reset the counter by sending a message to the worker
            var currentDate1 = new Date();
            // Add minutes based on session config
            currentDate1.setMinutes(currentDate1.getMinutes() + Math.floor(maxValue / 60));
            // pass value to counter
            workerPort.postMessage({ reset: true, max: currentDate1 });
        };
        document.onkeypress = function () {
            // Reset the counter by sending a message to the worker
            var currentDate1 = new Date();
            // Add minutes based on session config
            currentDate1.setMinutes(currentDate1.getMinutes() + Math.floor(maxValue / 60));
            // pass value to counter
            workerPort.postMessage({ reset: true, max: currentDate1 });
        };

        var a = 1;
        workerPort.onmessage = function (e) {
            var value = e.data;
            var logout = localStorage.getItem("logout");
            //console.log('Received value from SharedWorker:', value, a++);

            //var dateNow = new Date();

            // Check if the value is less than or equal to 0
            if (logout == 1) {
                executeFunctionLogOut();
            }
            if (value == 'exit') {

                //console.log('Program sempat masuk: value == exit');
                if (!document.hidden) {
                    localStorage.setItem("hidup", 1);
                }
                executeFunction();
            }
        };


        //first load will use this function to send the timeout value
        var sessionTimeoutInt = (parseInt(localStorage.getItem("sessionTimeout"))); //get session length in second
        const maxValue = sessionTimeoutInt;
        var currentDate = new Date();

        localStorage.setItem("logout", 0);
        currentDate.setMinutes(currentDate.getMinutes() + Math.floor(maxValue / 60));
        workerPort.postMessage({ max: currentDate });

    </script>

    
        <!--  
            ?????? !!
            Please add following MIME Types in IIS

            .woff        application/x-font-woff
            .woff2       application/font-woff2
        -->

        <!-- Icon fonts -->
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/fonts/fontawesome.css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/fonts/ionicons.css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/fonts/linearicons.css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/fonts/open-iconic.css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/fonts/pe-icon-7-stroke.css" />

        <!-- Core stylesheets -->
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/css/rtl/bootstrap.css" class="theme-settings-bootstrap-css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/css/rtl/bootstrap.min.css" class="theme-settings-bootstrap-min-css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/css/rtl/appwork.css" class="theme-settings-appwork-css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/css/rtl/theme-corporate.css" class="theme-settings-theme-css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/css/rtl/colors.css" class="theme-settings-colors-css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/css/rtl/uikit.css" />
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/css/demo.css" />



        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/css/toastr.css" />

        
        <script src="/eMAXRNRBARAKAH/Javascript/jquery-3.5.1.min.js"></script>
        
        <script src="/eMAXRNRBARAKAH/Theme/AppWork/vendor/js/material-ripple.js"></script>
        <script src="/eMAXRNRBARAKAH/Theme/AppWork/vendor/js/layout-helpers.js"></script>
        <script src="/eMAXRNRBARAKAH/Theme/AppWork/js/toastr.js"></script>
        
        <script type="text/javascript" src="/eMAXRNRBARAKAH/Theme/AppWork/js/dragable-jquery-ui.js"></script>
        <script type="text/javascript" src="/eMAXRNRBARAKAH/Theme/AppWork/js/sweet_alert.js"></script>

        <!-- Theme settings -->
        <!-- This file MUST be included after core stylesheets and layout-helpers.js in the (head) section -->
        

        <!-- Core scripts -->
        <script src="/eMAXRNRBARAKAH/Theme/AppWork/vendor/js/pace.js"></script>

        <!-- Libs -->
        <link rel="stylesheet" href="/eMAXRNRBARAKAH/Theme/AppWork/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
        



    
    
    <link type="text/css" rel="stylesheet" href="../Stylesheet/nav.css" />
    
    
    <script type="text/javascript" src="../Javascript/General.js"></script>
    
    <script type="text/javascript">
        //function ConfirmMsg(msg)
        //{
        //	if (confirm(msg) == true)
        //		return true;
        //	else
        //		return false; 
        //}
        function disableButton() {
            try { document.getElementById('btnSave').disabled = true; } catch (err) { }
            try { document.getElementById('btnSavePrint').disabled = true; } catch (err) { }
            try { document.getElementById('btnPrintEmail').disabled = true; } catch (err) { }
            try { document.getElementById('btnPrintDO').disabled = true; } catch (err) { }
            try { document.getElementById('btnPrintRetread').disabled = true; } catch (err) { }
            try { document.getElementsByName('btnPrintOptions')[0].disabled = true; } catch (err) { }
        }

        function RedirectNewWindow() {
            window.location.href = 'Sales_Invoice.aspx';
        }

        function ConfirmSendEmail() {
            if (confirm("Are you confirm send email to customer? Press OK to send email.") == true)
                return true;
            else
                return false;
        }

        function lnkNewInventory_Click() {
            window.open('../Admin/Master_Inventory_AddEdit.aspx', '', 'height=400,width=600,toolbar=no,scrollbars=yes,resizable=yes,menubar=Yes');
        }

        function lnkNewCustomer_Click() {
            window.open('../Admin/Master_Customer_AddEdit.aspx', '', 'height=400,width=600,toolbar=no,scrollbars=yes,resizable=yes,menubar=Yes');
        }
        $(document).ready(function () {
            $(".ui-draggable").sortable({
                items: 'tr:not(tr:first-child)',
                cursor: 'crosshair',
                axis: 'y',
                dropOnEmpty: true,
                start: function (e, ui) {
                    ui.item.addClass("selected");

                },
                stop: function (e, ui) {

                    ui.item.removeClass("selected");
                }

            });
        });
    </script>

    <style>
        .wpv-filter-form .form-control {
            border-radius: 0;
            box-shadow: none;
            -webkit-box-shadow: none;
        }

        /*
        .textarea
        {
            resize: none;
        }

        textarea
        {
            resize: none;
        }
*/
    </style>
    <style type="text/css">
        .round-box {
            border-radius: 4px;
            background: #07619f;
            padding: 10px;
            min-width: 200px;
            height: 80px;
            text-align: center;
        }

        .clickable {
            cursor: pointer;
        }

            .clickable:hover {
                background: #075183;
            }

        .round-box-label {
            color: white;
            font-weight: bold;
            font-size: 18px;
        }

        .round-box-desc {
            color: white;
            font-weight: bold;
            font-size: 24px;
        }

        .centeraa {
            margin-left: auto;
            margin-right: auto;
        }

        img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .activee { /*widen size for the lblsign*/
            width: 300px;
        }
    </style>
</head>
<body onload="displayDateTime();">

    

    <form method="post" action="./Sales_Invoice_AddEdit?Param=cXN0clNhbGVzVHlwZT1JVg%3d%3d" id="frmMasterPage">
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__LASTFOCUS" id="__LASTFOCUS" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE5NzUwODAyNzMPFiQeD09sZEN1cnJlbmN5Q29kZWUeCU9sZElTRGF0ZQYAAAAAAAAAAB4ZdnNTYWxlc0ludm9pY2VEZXRhaWxUYWJsZWQeDHZzQ3VzdG9tZXJJRGQeHXZzQ3VycmVudFNhbGVzSW52b2ljZUhlYWRlcklEZB4VdnNJbnZvaWNlRGV0YWlsVGVtcElEZh4LdnNQYXltZW50SURmHht2c1N1bUl0ZW1EZXRhaWxJREJlZm9yZUVkaXRmHhVMaXN0UGF5bWVudERlbGV0ZWRCMkIy3AIAAQAAAP////8BAAAAAAAAAAwCAAAAQmVQT1MsIFZlcnNpb249MS4wLjg5NTAuMzA0MDcsIEN1bHR1cmU9bmV1dHJhbCwgUHVibGljS2V5VG9rZW49bnVsbAQBAAAAggFTeXN0ZW0uQ29sbGVjdGlvbnMuR2VuZXJpYy5MaXN0YDFbW2VQT1MuQVBJLk1vZGVsLlBheW1lbnRCMkIsIGVQT1MsIFZlcnNpb249MS4wLjg5NTAuMzA0MDcsIEN1bHR1cmU9bmV1dHJhbCwgUHVibGljS2V5VG9rZW49bnVsbF1dAwAAAAZfaXRlbXMFX3NpemUIX3ZlcnNpb24EAAAbZVBPUy5BUEkuTW9kZWwuUGF5bWVudEIyQltdAgAAAAgICQMAAAAAAAAAAAAAAAcDAAAAAAEAAAAAAAAABBllUE9TLkFQSS5Nb2RlbC5QYXltZW50QjJCAgAAAAseCnZzU2FsZXNtYW4y730AAQAAAP////8BAAAAAAAAAAwCAAAATlN5c3RlbS5EYXRhLCBWZXJzaW9uPTQuMC4wLjAsIEN1bHR1cmU9bmV1dHJhbCwgUHVibGljS2V5VG9rZW49Yjc3YTVjNTYxOTM0ZTA4OQUBAAAAFVN5c3RlbS5EYXRhLkRhdGFUYWJsZQMAAAAZRGF0YVRhYmxlLlJlbW90aW5nVmVyc2lvbglYbWxTY2hlbWELWG1sRGlmZkdyYW0DAQEOU3lzdGVtLlZlcnNpb24CAAAACQMAAAAGBAAAAPwrPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTE2Ij8+DQo8eHM6c2NoZW1hIHhtbG5zPSIiIHhtbG5zOnhzPSJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYSIgeG1sbnM6bXNkYXRhPSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOnhtbC1tc2RhdGEiPg0KICA8eHM6ZWxlbWVudCBuYW1lPSJUYWJsZSI+DQogICAgPHhzOmNvbXBsZXhUeXBlPg0KICAgICAgPHhzOnNlcXVlbmNlPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJFbXBsb3llZV9JRCIgdHlwZT0ieHM6aW50IiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iRW1wbG95ZWVfQ29kZSIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iRW1wbG95ZWVfTmFtZSIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iSWRlbnRpdHlfTm8iIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkFkZHJlc3NfMSIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iQWRkcmVzc18yIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJBZGRyZXNzXzMiIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IlBvc3Rjb2RlIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJDaXR5IiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJDb3VudHJ5X0lEIiB0eXBlPSJ4czppbnQiIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJTdGF0ZV9JRCIgdHlwZT0ieHM6aW50IiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iSG9tZV9QaG9uZSIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iTW9iaWxlX1Bob25lIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJFbWFpbF9BZGRyZXNzIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJHZW5kZXIiIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkJpcnRoZGF5IiB0eXBlPSJ4czpkYXRlVGltZSIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkVkdWNhdGlvbl9MZXZlbF9JRCIgdHlwZT0ieHM6aW50IiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iRGVzaWduYXRpb24iIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkRhdGVfSm9pbiIgdHlwZT0ieHM6ZGF0ZVRpbWUiIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJEYXRlX1Jlc2lnbiIgdHlwZT0ieHM6ZGF0ZVRpbWUiIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJCYW5rX05hbWUiIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkJhbmtfQWNjb3VudF9ObyIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iUmVtYXJrIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJTdGF0dXMiIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9Ikxhc3RfTW9kX0J5IiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJMYXN0X01vZF9EYXRlIiB0eXBlPSJ4czpkYXRlVGltZSIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkVQRl9ObyIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iU29zc29fTm8iIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IlBhc3Nwb3J0X05vIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJSYWNlIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJNYXJpdGFsX1N0YXR1cyIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iTm9fT2ZfQ2hpbGRyZW4iIHR5cGU9InhzOnNob3J0IiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iU3BvdXNlX1dvcmtpbmciIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkJhc2ljX1NhbGFyeSIgdHlwZT0ieHM6ZGVjaW1hbCIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkVtcGxveWVlX1R5cGUiIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkVQRl9FbXBsb3llciIgdHlwZT0ieHM6ZGVjaW1hbCIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkVQRl9FbXBsb3llZSIgdHlwZT0ieHM6ZGVjaW1hbCIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IlNvY3NvX0NhdGVnb3J5IiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJQQ0JfTm8iIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IlBDQl9DYXRlZ29yeSIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iSW5jZW50aXZlIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJNaW5fU2FsZXNfVGFyZ2V0IiB0eXBlPSJ4czpkZWNpbWFsIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iRGVwYXJ0bWVudCIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iUGF5X01vZGUiIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkVQRl9Db250cmlidXRpb24iIHR5cGU9InhzOnN0cmluZyIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkNvbW11bml0eV9Eb25hdGlvbiIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iTmF0aW9uYWxpdHlfSUQiIHR5cGU9InhzOmludCIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IlJlbGlnaW9uIiB0eXBlPSJ4czpzdHJpbmciIG1zZGF0YTp0YXJnZXROYW1lc3BhY2U9IiIgbWluT2NjdXJzPSIwIiAvPg0KICAgICAgICA8eHM6ZWxlbWVudCBuYW1lPSJMb2NhbF9JZGVudGl0eV9ObyIgdHlwZT0ieHM6c3RyaW5nIiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgICAgPHhzOmVsZW1lbnQgbmFtZT0iUmVwb3J0X01hbmFnZXJfSUQiIHR5cGU9InhzOmludCIgbXNkYXRhOnRhcmdldE5hbWVzcGFjZT0iIiBtaW5PY2N1cnM9IjAiIC8+DQogICAgICAgIDx4czplbGVtZW50IG5hbWU9IkJyYW5jaF9JRCIgdHlwZT0ieHM6aW50IiBtc2RhdGE6dGFyZ2V0TmFtZXNwYWNlPSIiIG1pbk9jY3Vycz0iMCIgLz4NCiAgICAgIDwveHM6c2VxdWVuY2U+DQogICAgPC94czpjb21wbGV4VHlwZT4NCiAgPC94czplbGVtZW50Pg0KICA8eHM6ZWxlbWVudCBuYW1lPSJOZXdEYXRhU2V0IiBtc2RhdGE6SXNEYXRhU2V0PSJ0cnVlIiBtc2RhdGE6TWFpbkRhdGFUYWJsZT0iVGFibGUiIG1zZGF0YTpVc2VDdXJyZW50TG9jYWxlPSJ0cnVlIj4NCiAgICA8eHM6Y29tcGxleFR5cGU+DQogICAgICA8eHM6Y2hvaWNlIG1pbk9jY3Vycz0iMCIgbWF4T2NjdXJzPSJ1bmJvdW5kZWQiIC8+DQogICAgPC94czpjb21wbGV4VHlwZT4NCiAgPC94czplbGVtZW50Pg0KPC94czpzY2hlbWE+BgUAAADGTzxkaWZmZ3I6ZGlmZmdyYW0geG1sbnM6bXNkYXRhPSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOnhtbC1tc2RhdGEiIHhtbG5zOmRpZmZncj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp4bWwtZGlmZmdyYW0tdjEiPg0KICA8TmV3RGF0YVNldD4NCiAgICA8VGFibGUgZGlmZmdyOmlkPSJUYWJsZTEiIG1zZGF0YTpyb3dPcmRlcj0iMCI+DQogICAgICA8RW1wbG95ZWVfSUQ+NTwvRW1wbG95ZWVfSUQ+DQogICAgICA8RW1wbG95ZWVfQ29kZT5FTTEwMDU8L0VtcGxveWVlX0NvZGU+DQogICAgICA8RW1wbG95ZWVfTmFtZT5CQUtIVCBNVU5FRVI8L0VtcGxveWVlX05hbWU+DQogICAgICA8SWRlbnRpdHlfTm8+MTMyMDI5MDM1OTk5MTwvSWRlbnRpdHlfTm8+DQogICAgICA8QWRkcmVzc18xIC8+DQogICAgICA8QWRkcmVzc18yIC8+DQogICAgICA8QWRkcmVzc18zIC8+DQogICAgICA8UG9zdGNvZGUgLz4NCiAgICAgIDxDaXR5IC8+DQogICAgICA8Q291bnRyeV9JRD4xPC9Db3VudHJ5X0lEPg0KICAgICAgPFN0YXRlX0lEPi0xPC9TdGF0ZV9JRD4NCiAgICAgIDxIb21lX1Bob25lIC8+DQogICAgICA8TW9iaWxlX1Bob25lIC8+DQogICAgICA8RW1haWxfQWRkcmVzcyAvPg0KICAgICAgPEdlbmRlcj5NYWxlPC9HZW5kZXI+DQogICAgICA8QmlydGhkYXk+MTk5Ni0wMS0wMVQwMDowMDowMCswODowMDwvQmlydGhkYXk+DQogICAgICA8RWR1Y2F0aW9uX0xldmVsX0lEPi0xPC9FZHVjYXRpb25fTGV2ZWxfSUQ+DQogICAgICA8RGVzaWduYXRpb24gLz4NCiAgICAgIDxEYXRlX0pvaW4+MjAyNC0wOS0wMVQwMDowMDowMCswODowMDwvRGF0ZV9Kb2luPg0KICAgICAgPEJhbmtfTmFtZSAvPg0KICAgICAgPEJhbmtfQWNjb3VudF9ObyAvPg0KICAgICAgPFJlbWFyayAvPg0KICAgICAgPFN0YXR1cz5BPC9TdGF0dXM+DQogICAgICA8TGFzdF9Nb2RfQnk+QWRtaW48L0xhc3RfTW9kX0J5Pg0KICAgICAgPExhc3RfTW9kX0RhdGU+MjAyNC0wOS0wOVQxMzozNDozOC4zODcrMDg6MDA8L0xhc3RfTW9kX0RhdGU+DQogICAgICA8RVBGX05vIC8+DQogICAgICA8U29zc29fTm8gLz4NCiAgICAgIDxQYXNzcG9ydF9ObyAvPg0KICAgICAgPFJhY2UgLz4NCiAgICAgIDxNYXJpdGFsX1N0YXR1cyAvPg0KICAgICAgPE5vX09mX0NoaWxkcmVuPjA8L05vX09mX0NoaWxkcmVuPg0KICAgICAgPFNwb3VzZV9Xb3JraW5nIC8+DQogICAgICA8QmFzaWNfU2FsYXJ5PjAuMDAwMDwvQmFzaWNfU2FsYXJ5Pg0KICAgICAgPEVtcGxveWVlX1R5cGUgLz4NCiAgICAgIDxFUEZfRW1wbG95ZXI+MC4wMDwvRVBGX0VtcGxveWVyPg0KICAgICAgPEVQRl9FbXBsb3llZT4wLjAwPC9FUEZfRW1wbG95ZWU+DQogICAgICA8U29jc29fQ2F0ZWdvcnkgLz4NCiAgICAgIDxQQ0JfTm8gLz4NCiAgICAgIDxQQ0JfQ2F0ZWdvcnkgLz4NCiAgICAgIDxJbmNlbnRpdmUgLz4NCiAgICAgIDxEZXBhcnRtZW50IC8+DQogICAgICA8UGF5X01vZGUgLz4NCiAgICAgIDxFUEZfQ29udHJpYnV0aW9uPk48L0VQRl9Db250cmlidXRpb24+DQogICAgICA8Q29tbXVuaXR5X0RvbmF0aW9uIC8+DQogICAgICA8TmF0aW9uYWxpdHlfSUQ+NTg2PC9OYXRpb25hbGl0eV9JRD4NCiAgICAgIDxSZWxpZ2lvbiAvPg0KICAgICAgPExvY2FsX0lkZW50aXR5X05vIC8+DQogICAgICA8UmVwb3J0X01hbmFnZXJfSUQ+LTE8L1JlcG9ydF9NYW5hZ2VyX0lEPg0KICAgICAgPEJyYW5jaF9JRD4xPC9CcmFuY2hfSUQ+DQogICAgPC9UYWJsZT4NCiAgICA8VGFibGUgZGlmZmdyOmlkPSJUYWJsZTIiIG1zZGF0YTpyb3dPcmRlcj0iMSI+DQogICAgICA8RW1wbG95ZWVfSUQ+MzwvRW1wbG95ZWVfSUQ+DQogICAgICA8RW1wbG95ZWVfQ29kZT5FTTEwMDM8L0VtcGxveWVlX0NvZGU+DQogICAgICA8RW1wbG95ZWVfTmFtZT5reWF3IHpheSB5YXI8L0VtcGxveWVlX05hbWU+DQogICAgICA8SWRlbnRpdHlfTm8+MjJBUkswMjAyOTk8L0lkZW50aXR5X05vPg0KICAgICAgPEFkZHJlc3NfMSAvPg0KICAgICAgPEFkZHJlc3NfMiAvPg0KICAgICAgPEFkZHJlc3NfMyAvPg0KICAgICAgPFBvc3Rjb2RlIC8+DQogICAgICA8Q2l0eSAvPg0KICAgICAgPENvdW50cnlfSUQ+MTwvQ291bnRyeV9JRD4NCiAgICAgIDxTdGF0ZV9JRD4tMTwvU3RhdGVfSUQ+DQogICAgICA8SG9tZV9QaG9uZSAvPg0KICAgICAgPE1vYmlsZV9QaG9uZSAvPg0KICAgICAgPEVtYWlsX0FkZHJlc3MgLz4NCiAgICAgIDxHZW5kZXI+TWFsZTwvR2VuZGVyPg0KICAgICAgPEJpcnRoZGF5PjE5ODYtMDYtMjBUMDA6MDA6MDArMDg6MDA8L0JpcnRoZGF5Pg0KICAgICAgPEVkdWNhdGlvbl9MZXZlbF9JRD4tMTwvRWR1Y2F0aW9uX0xldmVsX0lEPg0KICAgICAgPERlc2lnbmF0aW9uIC8+DQogICAgICA8RGF0ZV9Kb2luPjIwMjQtMDQtMTVUMDA6MDA6MDArMDg6MDA8L0RhdGVfSm9pbj4NCiAgICAgIDxCYW5rX05hbWUgLz4NCiAgICAgIDxCYW5rX0FjY291bnRfTm8gLz4NCiAgICAgIDxSZW1hcmsgLz4NCiAgICAgIDxTdGF0dXM+QTwvU3RhdHVzPg0KICAgICAgPExhc3RfTW9kX0J5PkFkbWluPC9MYXN0X01vZF9CeT4NCiAgICAgIDxMYXN0X01vZF9EYXRlPjIwMjQtMDktMDlUMTM6MjY6MzcuNDQzKzA4OjAwPC9MYXN0X01vZF9EYXRlPg0KICAgICAgPEVQRl9Obz4wPC9FUEZfTm8+DQogICAgICA8U29zc29fTm8gLz4NCiAgICAgIDxQYXNzcG9ydF9ObyAvPg0KICAgICAgPFJhY2U+T3RoZXI8L1JhY2U+DQogICAgICA8TWFyaXRhbF9TdGF0dXMgLz4NCiAgICAgIDxOb19PZl9DaGlsZHJlbj4wPC9Ob19PZl9DaGlsZHJlbj4NCiAgICAgIDxTcG91c2VfV29ya2luZyAvPg0KICAgICAgPEJhc2ljX1NhbGFyeT4wLjAwMDA8L0Jhc2ljX1NhbGFyeT4NCiAgICAgIDxFbXBsb3llZV9UeXBlIC8+DQogICAgICA8RVBGX0VtcGxveWVyPjAuMDA8L0VQRl9FbXBsb3llcj4NCiAgICAgIDxFUEZfRW1wbG95ZWU+MC4wMDwvRVBGX0VtcGxveWVlPg0KICAgICAgPFNvY3NvX0NhdGVnb3J5IC8+DQogICAgICA8UENCX05vIC8+DQogICAgICA8UENCX0NhdGVnb3J5IC8+DQogICAgICA8SW5jZW50aXZlIC8+DQogICAgICA8RGVwYXJ0bWVudCAvPg0KICAgICAgPFBheV9Nb2RlIC8+DQogICAgICA8RVBGX0NvbnRyaWJ1dGlvbj5OPC9FUEZfQ29udHJpYnV0aW9uPg0KICAgICAgPENvbW11bml0eV9Eb25hdGlvbiAvPg0KICAgICAgPE5hdGlvbmFsaXR5X0lEPjEwNDwvTmF0aW9uYWxpdHlfSUQ+DQogICAgICA8UmVsaWdpb24+T3RoZXI8L1JlbGlnaW9uPg0KICAgICAgPExvY2FsX0lkZW50aXR5X05vIC8+DQogICAgICA8UmVwb3J0X01hbmFnZXJfSUQ+LTE8L1JlcG9ydF9NYW5hZ2VyX0lEPg0KICAgICAgPEJyYW5jaF9JRD4xPC9CcmFuY2hfSUQ+DQogICAgPC9UYWJsZT4NCiAgICA8VGFibGUgZGlmZmdyOmlkPSJUYWJsZTMiIG1zZGF0YTpyb3dPcmRlcj0iMiI+DQogICAgICA8RW1wbG95ZWVfSUQ+NDwvRW1wbG95ZWVfSUQ+DQogICAgICA8RW1wbG95ZWVfQ29kZT5FTTEwMDQ8L0VtcGxveWVlX0NvZGU+DQogICAgICA8RW1wbG95ZWVfTmFtZT5NT0hEIEZBSVpVTCBGQVpMQU4gQklOIERBUk9OSTwvRW1wbG95ZWVfTmFtZT4NCiAgICAgIDxJZGVudGl0eV9Obz44NjA1MTYyMzU0Nzc8L0lkZW50aXR5X05vPg0KICAgICAgPEFkZHJlc3NfMSAvPg0KICAgICAgPEFkZHJlc3NfMiAvPg0KICAgICAgPEFkZHJlc3NfMyAvPg0KICAgICAgPFBvc3Rjb2RlIC8+DQogICAgICA8Q2l0eSAvPg0KICAgICAgPENvdW50cnlfSUQ+MTwvQ291bnRyeV9JRD4NCiAgICAgIDxTdGF0ZV9JRD4tMTwvU3RhdGVfSUQ+DQogICAgICA8SG9tZV9QaG9uZSAvPg0KICAgICAgPE1vYmlsZV9QaG9uZT4rNjAxMTU4NzE2MzY1PC9Nb2JpbGVfUGhvbmU+DQogICAgICA8RW1haWxfQWRkcmVzcyAvPg0KICAgICAgPEdlbmRlcj5NYWxlPC9HZW5kZXI+DQogICAgICA8QmlydGhkYXk+MTk4Ni0wNS0xNlQwMDowMDowMCswODowMDwvQmlydGhkYXk+DQogICAgICA8RWR1Y2F0aW9uX0xldmVsX0lEPi0xPC9FZHVjYXRpb25fTGV2ZWxfSUQ+DQogICAgICA8RGVzaWduYXRpb24gLz4NCiAgICAgIDxEYXRlX0pvaW4+MjAyNC0wOC0wMVQwMDowMDowMCswODowMDwvRGF0ZV9Kb2luPg0KICAgICAgPERhdGVfUmVzaWduPjIwMjQtMDktMTFUMDA6MDA6MDArMDg6MDA8L0RhdGVfUmVzaWduPg0KICAgICAgPEJhbmtfTmFtZSAvPg0KICAgICAgPEJhbmtfQWNjb3VudF9ObyAvPg0KICAgICAgPFJlbWFyayAvPg0KICAgICAgPFN0YXR1cz5BPC9TdGF0dXM+DQogICAgICA8TGFzdF9Nb2RfQnk+QWRtaW48L0xhc3RfTW9kX0J5Pg0KICAgICAgPExhc3RfTW9kX0RhdGU+MjAyNC0wOS0xMVQxNTowMDo0MC42MDcrMDg6MDA8L0xhc3RfTW9kX0RhdGU+DQogICAgICA8RVBGX05vIC8+DQogICAgICA8U29zc29fTm8gLz4NCiAgICAgIDxQYXNzcG9ydF9ObyAvPg0KICAgICAgPFJhY2U+TWFsYXk8L1JhY2U+DQogICAgICA8TWFyaXRhbF9TdGF0dXMgLz4NCiAgICAgIDxOb19PZl9DaGlsZHJlbj4wPC9Ob19PZl9DaGlsZHJlbj4NCiAgICAgIDxTcG91c2VfV29ya2luZyAvPg0KICAgICAgPEJhc2ljX1NhbGFyeT4wLjAwMDA8L0Jhc2ljX1NhbGFyeT4NCiAgICAgIDxFbXBsb3llZV9UeXBlIC8+DQogICAgICA8RVBGX0VtcGxveWVyPjAuMDA8L0VQRl9FbXBsb3llcj4NCiAgICAgIDxFUEZfRW1wbG95ZWU+MC4wMDwvRVBGX0VtcGxveWVlPg0KICAgICAgPFNvY3NvX0NhdGVnb3J5IC8+DQogICAgICA8UENCX05vIC8+DQogICAgICA8UENCX0NhdGVnb3J5IC8+DQogICAgICA8SW5jZW50aXZlIC8+DQogICAgICA8RGVwYXJ0bWVudCAvPg0KICAgICAgPFBheV9Nb2RlIC8+DQogICAgICA8RVBGX0NvbnRyaWJ1dGlvbj5OPC9FUEZfQ29udHJpYnV0aW9uPg0KICAgICAgPENvbW11bml0eV9Eb25hdGlvbiAvPg0KICAgICAgPE5hdGlvbmFsaXR5X0lEPjQ1ODwvTmF0aW9uYWxpdHlfSUQ+DQogICAgICA8UmVsaWdpb24+SXNsYW08L1JlbGlnaW9uPg0KICAgICAgPExvY2FsX0lkZW50aXR5X05vIC8+DQogICAgICA8UmVwb3J0X01hbmFnZXJfSUQ+LTE8L1JlcG9ydF9NYW5hZ2VyX0lEPg0KICAgICAgPEJyYW5jaF9JRD4xPC9CcmFuY2hfSUQ+DQogICAgPC9UYWJsZT4NCiAgICA8VGFibGUgZGlmZmdyOmlkPSJUYWJsZTQiIG1zZGF0YTpyb3dPcmRlcj0iMyI+DQogICAgICA8RW1wbG95ZWVfSUQ+MjwvRW1wbG95ZWVfSUQ+DQogICAgICA8RW1wbG95ZWVfQ29kZT5FTTEwMDI8L0VtcGxveWVlX0NvZGU+DQogICAgICA8RW1wbG95ZWVfTmFtZT5tdWhhbW1hZCBheml6YW4gYmluIGFudWFyPC9FbXBsb3llZV9OYW1lPg0KICAgICAgPElkZW50aXR5X05vPjkxMTEwNTA1NTkxMTwvSWRlbnRpdHlfTm8+DQogICAgICA8QWRkcmVzc18xIC8+DQogICAgICA8QWRkcmVzc18yIC8+DQogICAgICA8QWRkcmVzc18zIC8+DQogICAgICA8UG9zdGNvZGUgLz4NCiAgICAgIDxDaXR5IC8+DQogICAgICA8Q291bnRyeV9JRD4xPC9Db3VudHJ5X0lEPg0KICAgICAgPFN0YXRlX0lEPi0xPC9TdGF0ZV9JRD4NCiAgICAgIDxIb21lX1Bob25lIC8+DQogICAgICA8TW9iaWxlX1Bob25lPis2MDExMzY3MTU5MjE8L01vYmlsZV9QaG9uZT4NCiAgICAgIDxFbWFpbF9BZGRyZXNzIC8+DQogICAgICA8R2VuZGVyPk1hbGU8L0dlbmRlcj4NCiAgICAgIDxCaXJ0aGRheT4xOTkxLTExLTA1VDAwOjAwOjAwKzA4OjAwPC9CaXJ0aGRheT4NCiAgICAgIDxFZHVjYXRpb25fTGV2ZWxfSUQ+LTE8L0VkdWNhdGlvbl9MZXZlbF9JRD4NCiAgICAgIDxEZXNpZ25hdGlvbiAvPg0KICAgICAgPERhdGVfSm9pbj4yMDI0LTA3LTAxVDAwOjAwOjAwKzA4OjAwPC9EYXRlX0pvaW4+DQogICAgICA8QmFua19OYW1lIC8+DQogICAgICA8QmFua19BY2NvdW50X05vIC8+DQogICAgICA8UmVtYXJrIC8+DQogICAgICA8U3RhdHVzPkE8L1N0YXR1cz4NCiAgICAgIDxMYXN0X01vZF9CeT5BZG1pbjwvTGFzdF9Nb2RfQnk+DQogICAgICA8TGFzdF9Nb2RfRGF0ZT4yMDI0LTA5LTA5VDEzOjExOjE5Ljk4MyswODowMDwvTGFzdF9Nb2RfRGF0ZT4NCiAgICAgIDxFUEZfTm8gLz4NCiAgICAgIDxTb3Nzb19ObyAvPg0KICAgICAgPFBhc3Nwb3J0X05vIC8+DQogICAgICA8UmFjZT5NYWxheTwvUmFjZT4NCiAgICAgIDxNYXJpdGFsX1N0YXR1cz5NYXJyaWVkPC9NYXJpdGFsX1N0YXR1cz4NCiAgICAgIDxOb19PZl9DaGlsZHJlbj40PC9Ob19PZl9DaGlsZHJlbj4NCiAgICAgIDxTcG91c2VfV29ya2luZyAvPg0KICAgICAgPEJhc2ljX1NhbGFyeT4wLjAwMDA8L0Jhc2ljX1NhbGFyeT4NCiAgICAgIDxFbXBsb3llZV9UeXBlIC8+DQogICAgICA8RVBGX0VtcGxveWVyPjAuMDA8L0VQRl9FbXBsb3llcj4NCiAgICAgIDxFUEZfRW1wbG95ZWU+MC4wMDwvRVBGX0VtcGxveWVlPg0KICAgICAgPFNvY3NvX0NhdGVnb3J5IC8+DQogICAgICA8UENCX05vIC8+DQogICAgICA8UENCX0NhdGVnb3J5IC8+DQogICAgICA8SW5jZW50aXZlIC8+DQogICAgICA8RGVwYXJ0bWVudCAvPg0KICAgICAgPFBheV9Nb2RlIC8+DQogICAgICA8RVBGX0NvbnRyaWJ1dGlvbj5OPC9FUEZfQ29udHJpYnV0aW9uPg0KICAgICAgPENvbW11bml0eV9Eb25hdGlvbiAvPg0KICAgICAgPE5hdGlvbmFsaXR5X0lEPjQ1ODwvTmF0aW9uYWxpdHlfSUQ+DQogICAgICA8UmVsaWdpb24+SXNsYW08L1JlbGlnaW9uPg0KICAgICAgPExvY2FsX0lkZW50aXR5X05vIC8+DQogICAgICA8UmVwb3J0X01hbmFnZXJfSUQ+LTE8L1JlcG9ydF9NYW5hZ2VyX0lEPg0KICAgICAgPEJyYW5jaF9JRD4xPC9CcmFuY2hfSUQ+DQogICAgPC9UYWJsZT4NCiAgICA8VGFibGUgZGlmZmdyOmlkPSJUYWJsZTUiIG1zZGF0YTpyb3dPcmRlcj0iNCI+DQogICAgICA8RW1wbG95ZWVfSUQ+MTwvRW1wbG95ZWVfSUQ+DQogICAgICA8RW1wbG95ZWVfQ29kZT5FTTEwMDE8L0VtcGxveWVlX0NvZGU+DQogICAgICA8RW1wbG95ZWVfTmFtZT5wYWltYW4gaXNtYWlsPC9FbXBsb3llZV9OYW1lPg0KICAgICAgPElkZW50aXR5X05vPjcyMDgwNzAxNjM0MTwvSWRlbnRpdHlfTm8+DQogICAgICA8QWRkcmVzc18xIC8+DQogICAgICA8QWRkcmVzc18yIC8+DQogICAgICA8QWRkcmVzc18zIC8+DQogICAgICA8UG9zdGNvZGUgLz4NCiAgICAgIDxDaXR5IC8+DQogICAgICA8Q291bnRyeV9JRD4xPC9Db3VudHJ5X0lEPg0KICAgICAgPFN0YXRlX0lEPi0xPC9TdGF0ZV9JRD4NCiAgICAgIDxIb21lX1Bob25lIC8+DQogICAgICA8TW9iaWxlX1Bob25lPis2MDEzNzM0NDIyNjwvTW9iaWxlX1Bob25lPg0KICAgICAgPEVtYWlsX0FkZHJlc3MgLz4NCiAgICAgIDxHZW5kZXI+TWFsZTwvR2VuZGVyPg0KICAgICAgPEJpcnRoZGF5PjE5NzItMDgtMDdUMDA6MDA6MDArMDg6MDA8L0JpcnRoZGF5Pg0KICAgICAgPEVkdWNhdGlvbl9MZXZlbF9JRD4tMTwvRWR1Y2F0aW9uX0xldmVsX0lEPg0KICAgICAgPERlc2lnbmF0aW9uIC8+DQogICAgICA8RGF0ZV9Kb2luPjIwMjQtMDQtMTVUMDA6MDA6MDArMDg6MDA8L0RhdGVfSm9pbj4NCiAgICAgIDxCYW5rX05hbWUgLz4NCiAgICAgIDxCYW5rX0FjY291bnRfTm8gLz4NCiAgICAgIDxSZW1hcmsgLz4NCiAgICAgIDxTdGF0dXM+QTwvU3RhdHVzPg0KICAgICAgPExhc3RfTW9kX0J5PkFkbWluPC9MYXN0X01vZF9CeT4NCiAgICAgIDxMYXN0X01vZF9EYXRlPjIwMjQtMDktMDlUMTM6MTI6MDEuMzY3KzA4OjAwPC9MYXN0X01vZF9EYXRlPg0KICAgICAgPEVQRl9ObyAvPg0KICAgICAgPFNvc3NvX05vIC8+DQogICAgICA8UGFzc3BvcnRfTm8gLz4NCiAgICAgIDxSYWNlPk1hbGF5PC9SYWNlPg0KICAgICAgPE1hcml0YWxfU3RhdHVzPk1hcnJpZWQ8L01hcml0YWxfU3RhdHVzPg0KICAgICAgPE5vX09mX0NoaWxkcmVuPjA8L05vX09mX0NoaWxkcmVuPg0KICAgICAgPFNwb3VzZV9Xb3JraW5nIC8+DQogICAgICA8QmFzaWNfU2FsYXJ5PjAuMDAwMDwvQmFzaWNfU2FsYXJ5Pg0KICAgICAgPEVtcGxveWVlX1R5cGU+UGVybWFuZW50PC9FbXBsb3llZV9UeXBlPg0KICAgICAgPEVQRl9FbXBsb3llcj4wLjAwPC9FUEZfRW1wbG95ZXI+DQogICAgICA8RVBGX0VtcGxveWVlPjAuMDA8L0VQRl9FbXBsb3llZT4NCiAgICAgIDxTb2Nzb19DYXRlZ29yeSAvPg0KICAgICAgPFBDQl9ObyAvPg0KICAgICAgPFBDQl9DYXRlZ29yeSAvPg0KICAgICAgPEluY2VudGl2ZSAvPg0KICAgICAgPERlcGFydG1lbnQgLz4NCiAgICAgIDxQYXlfTW9kZT5CYW5rPC9QYXlfTW9kZT4NCiAgICAgIDxFUEZfQ29udHJpYnV0aW9uPk48L0VQRl9Db250cmlidXRpb24+DQogICAgICA8Q29tbXVuaXR5X0RvbmF0aW9uIC8+DQogICAgICA8TmF0aW9uYWxpdHlfSUQ+NDU4PC9OYXRpb25hbGl0eV9JRD4NCiAgICAgIDxSZWxpZ2lvbj5Jc2xhbTwvUmVsaWdpb24+DQogICAgICA8TG9jYWxfSWRlbnRpdHlfTm8gLz4NCiAgICAgIDxSZXBvcnRfTWFuYWdlcl9JRD4tMTwvUmVwb3J0X01hbmFnZXJfSUQ+DQogICAgICA8QnJhbmNoX0lEPjE8L0JyYW5jaF9JRD4NCiAgICA8L1RhYmxlPg0KICAgIDxUYWJsZSBkaWZmZ3I6aWQ9IlRhYmxlNiIgbXNkYXRhOnJvd09yZGVyPSI1Ij4NCiAgICAgIDxFbXBsb3llZV9JRD42PC9FbXBsb3llZV9JRD4NCiAgICAgIDxFbXBsb3llZV9Db2RlPkVNMTAwNjwvRW1wbG95ZWVfQ29kZT4NCiAgICAgIDxFbXBsb3llZV9OYW1lPlJPU1NMSU5BIEJJTlRJIE1BSE1PT0Q8L0VtcGxveWVlX05hbWU+DQogICAgICA8SWRlbnRpdHlfTm8+NzcwNjE5MDE2MDMyPC9JZGVudGl0eV9Obz4NCiAgICAgIDxBZGRyZXNzXzEgLz4NCiAgICAgIDxBZGRyZXNzXzIgLz4NCiAgICAgIDxBZGRyZXNzXzMgLz4NCiAgICAgIDxQb3N0Y29kZSAvPg0KICAgICAgPENpdHkgLz4NCiAgICAgIDxDb3VudHJ5X0lEPjE8L0NvdW50cnlfSUQ+DQogICAgICA8U3RhdGVfSUQ+MjwvU3RhdGVfSUQ+DQogICAgICA8SG9tZV9QaG9uZSAvPg0KICAgICAgPE1vYmlsZV9QaG9uZT4rNjAxMjI3NzQyOTM8L01vYmlsZV9QaG9uZT4NCiAgICAgIDxFbWFpbF9BZGRyZXNzIC8+DQogICAgICA8R2VuZGVyPkZlbWFsZTwvR2VuZGVyPg0KICAgICAgPEJpcnRoZGF5PjE5NzctMDYtMTlUMDA6MDA6MDArMDg6MDA8L0JpcnRoZGF5Pg0KICAgICAgPEVkdWNhdGlvbl9MZXZlbF9JRD4zPC9FZHVjYXRpb25fTGV2ZWxfSUQ+DQogICAgICA8RGVzaWduYXRpb24gLz4NCiAgICAgIDxEYXRlX0pvaW4+MjAyNC0wNC0xNVQwMDowMDowMCswODowMDwvRGF0ZV9Kb2luPg0KICAgICAgPEJhbmtfTmFtZSAvPg0KICAgICAgPEJhbmtfQWNjb3VudF9ObyAvPg0KICAgICAgPFJlbWFyayAvPg0KICAgICAgPFN0YXR1cz5BPC9TdGF0dXM+DQogICAgICA8TGFzdF9Nb2RfQnk+QWRtaW48L0xhc3RfTW9kX0J5Pg0KICAgICAgPExhc3RfTW9kX0RhdGU+MjAyNC0wOS0xMVQxNTowMDoxMC42NzcrMDg6MDA8L0xhc3RfTW9kX0RhdGU+DQogICAgICA8RVBGX05vIC8+DQogICAgICA8U29zc29fTm8gLz4NCiAgICAgIDxQYXNzcG9ydF9ObyAvPg0KICAgICAgPFJhY2U+TWFsYXk8L1JhY2U+DQogICAgICA8TWFyaXRhbF9TdGF0dXM+TWFycmllZDwvTWFyaXRhbF9TdGF0dXM+DQogICAgICA8Tm9fT2ZfQ2hpbGRyZW4+MzwvTm9fT2ZfQ2hpbGRyZW4+DQogICAgICA8U3BvdXNlX1dvcmtpbmcgLz4NCiAgICAgIDxCYXNpY19TYWxhcnk+MC4wMDAwPC9CYXNpY19TYWxhcnk+DQogICAgICA8RW1wbG95ZWVfVHlwZSAvPg0KICAgICAgPEVQRl9FbXBsb3llcj4wLjAwPC9FUEZfRW1wbG95ZXI+DQogICAgICA8RVBGX0VtcGxveWVlPjAuMDA8L0VQRl9FbXBsb3llZT4NCiAgICAgIDxTb2Nzb19DYXRlZ29yeSAvPg0KICAgICAgPFBDQl9ObyAvPg0KICAgICAgPFBDQl9DYXRlZ29yeSAvPg0KICAgICAgPEluY2VudGl2ZSAvPg0KICAgICAgPERlcGFydG1lbnQgLz4NCiAgICAgIDxQYXlfTW9kZSAvPg0KICAgICAgPEVQRl9Db250cmlidXRpb24+TjwvRVBGX0NvbnRyaWJ1dGlvbj4NCiAgICAgIDxDb21tdW5pdHlfRG9uYXRpb24gLz4NCiAgICAgIDxOYXRpb25hbGl0eV9JRD40NTg8L05hdGlvbmFsaXR5X0lEPg0KICAgICAgPFJlbGlnaW9uPklzbGFtPC9SZWxpZ2lvbj4NCiAgICAgIDxMb2NhbF9JZGVudGl0eV9ObyAvPg0KICAgICAgPFJlcG9ydF9NYW5hZ2VyX0lEPi0xPC9SZXBvcnRfTWFuYWdlcl9JRD4NCiAgICAgIDxCcmFuY2hfSUQ+MTwvQnJhbmNoX0lEPg0KICAgIDwvVGFibGU+DQogIDwvTmV3RGF0YVNldD4NCjwvZGlmZmdyOmRpZmZncmFtPgQDAAAADlN5c3RlbS5WZXJzaW9uBAAAAAZfTWFqb3IGX01pbm9yBl9CdWlsZAlfUmV2aXNpb24AAAAACAgICAIAAAAAAAAA//////////8LHhB2c0l0ZW1TYWxlc21hbklEZB4PT2xkQ3VycmVuY3lSYXRlKClbU3lzdGVtLkRlY2ltYWwsIG1zY29ybGliLCBWZXJzaW9uPTQuMC4wLjAsIEN1bHR1cmU9bmV1dHJhbCwgUHVibGljS2V5VG9rZW49Yjc3YTVjNTYxOTM0ZTA4OQExHhl2c0lTVG90YWxBbW91bnRCZWZvcmVFZGl0Zh4IdnNTaGlwVG9kHhJMaXN0UGF5bWVudERlbGV0ZWQy/wIAAQAAAP////8BAAAAAAAAAAwCAAAAQGVQT1MuQ29yZSwgVmVyc2lvbj0xLjAuMC4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPW51bGwEAQAAAI0BU3lzdGVtLkNvbGxlY3Rpb25zLkdlbmVyaWMuTGlzdGAxW1tlUE9TLkNvcmUuTW9kZWxzLlYyLlBheW1lbnRUcmFuc0RldGFpbCwgZVBPUy5Db3JlLCBWZXJzaW9uPTEuMC4wLjAsIEN1bHR1cmU9bmV1dHJhbCwgUHVibGljS2V5VG9rZW49bnVsbF1dAwAAAAZfaXRlbXMFX3NpemUIX3ZlcnNpb24EAAAoZVBPUy5Db3JlLk1vZGVscy5WMi5QYXltZW50VHJhbnNEZXRhaWxbXQIAAAAICAkDAAAAAAAAAAAAAAAHAwAAAAABAAAAAAAAAAQmZVBPUy5Db3JlLk1vZGVscy5WMi5QYXltZW50VHJhbnNEZXRhaWwCAAAACx4OdnNQYXltZW50VGFibGVkHgp2c1NoaXBGcm9tZB4bdnNJU1BheW1lbnRBbW91bnRCZWZvcmVFZGl0ZhYCZg9kFgICAQ9kFh4CAQ8WAh4EaHJlZgUZL2VNQVhSTlJCQVJBS0FIL01haW4uYXNweBYCAgEPFgIeA3NyYwUlL2VNQVhSTlJCQVJBS0FIL0ltYWdlcy9Mb2dvL0JsYW5rLmpwZ2QCAw8PFgIeBFRleHQFGVJOUiBCQVJBS0FIIEFVVE8gU0VSVklDRVNkZAIFDxYCHgV0aXRsZQUjKFVUQyswODowMCkgS3VhbGEgTHVtcHVyLCBTaW5nYXBvcmVkAgsPZBYCAgEPDxYCHxQFB1Bhc2FyYW5kZAIPD2QWAgIBDw8WAh8UBQxQYXBhbiBQZW11a2FkZAIRDxYGHgVjbGFzcwUYbmF2LWxpbmsgZHJvcGRvd24tdG9nZ2xlHgtkYXRhLXRvZ2dsZQUIZHJvcGRvd24eCGRpc2FibGVkZBYCAgEPDxYCHxQFD0JhaGFzYSBNYWxheXNpYWRkAhMPZBYCAgEPFgIeC18hSXRlbUNvdW50AgUWCmYPZBYCAgEPDxYCHg9Db21tYW5kQXJndW1lbnQFAkVOZBYEZg8WAh4Fc3R5bGUFCm9wYWNpdHk6MDtkAgIPDxYCHxQFB0VuZ2xpc2hkZAIBD2QWAgIBDw8WAh8aBQJCTWQWBGYPFgIfGwUKb3BhY2l0eToxO2QCAg8PFgIfFAUPQmFoYXNhIE1hbGF5c2lhZGQCAg9kFgICAQ8PFgIfGgUCQ05kFgRmDxYCHxsFCm9wYWNpdHk6MDtkAgIPDxYCHxQFBuS4reaWh2RkAgMPZBYCAgEPDxYCHxoFAlZJZBYEZg8WAh8bBQpvcGFjaXR5OjA7ZAICDw8WAh8UBQ5UaeG6v25nIFZp4buHdGRkAgQPZBYCAgEPDxYCHxoF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DkxhcG9yYW4gSnVhbGFuHxxnAQ9kEBYLZgIBAgICAwIEAgUCBgIHAggCCQIKFgs8KwAMAQAWBB8UBRhMYXBvcmFuIFJpbmdrYXNhbiBKdWFsYW4fHGg8KwAMAQAWBB8UBQ5MYXBvcmFuIEp1YWxhbh8cZzwrAAwBABYEHxQFGUxhcG9yYW4gSnVhbGFuIFNldGlhcCBKYW0fHGg8KwAMAQAWBB8UBRVMYXBvcmFuIEp1YWxhbiBIYXJpYW4fHGc8KwAMAQAWBB8UBRZMYXBvcmFuIEp1YWxhbiBCdWxhbmFuHxxnPCsADAEAFgQfFAUiTGFwb3JhbiBQZW5naGFudGFyYW4gVGlkYWsgTGVuZ2thcB8caDwrAAwBABYEHxQFI0xhcG9yYW4gUmluZ2thc2FuIFBlbnlhdGEgUGVsYW5nZ2FuHxxoPCsADAEAFgQfFAUiTGFwb3JhbiBQZW55YXRhIFB1bGFuZ2FuIFBlbGFuZ2dhbh8cZzwrAAwBABYEHxQFE0xhcG9yYW4gSnVhbGFuIEl0ZW0fHGc8KwAMAQAWBB8UBShMYXBvcmFuIE1hc2EgVmFyaWFucyBJbnZvaXMgUGVuZ2hhbnRhcmFuHxxoPCsADAEAFgIfHGhkPCsADAIAFgQfFAURTGFwb3JhbiBQZW1iZWxpYW4fHGcBD2QQFgdmAgECAgIDAgQCBQIGFgc8KwAMAQAWBB8UBRtMYXBvcmFuIFJpbmdrYXNhbiBQZW1iZWxpYW4fHGg8KwAMAQAWBB8UBRFMYXBvcmFuIHBlbWJlbGlhbh8cZzwrAAwBABYEHxQFJExhcG9yYW4gUmluZ2thc2FuIFB1bGFuZ2FuIFBlbWJlbGlhbh8caDwrAAwBABYEHxQFIkxhcG9yYW4gUGVueWF0YSBQdWxhbmdhbiBQZW1iZWxpYW4fHGc8KwAMAQAWBB8UBRZMYXBvcmFuIFBlbWJlbGlhbiBJdGVtHxxnPCsADAEAFgQfFAUUTGFwb3JhbiBQZXJpbmNpYW4gR1IfHGg8KwAMAQAWBB8UBRZMYXBvcmFuIFJpbmdrYXNhbiBQT0dSHxxoZDwrAAwBABYEHxQFFkxhcG9yYW4gQ3VrYWkgS2VyYWphYW4fHGg8KwAMAgAWBB8UBQxMYXBvcmFuIFN0b2sfHGcBD2QQFgtmAgECAgIDAgQCBQIGAgcCCAIJAgoWCzwrAAwBABYEHxQFIUxhcG9yYW4gUmluZ2thc2FuIFBlbWluZGFoYW4gU3Rvax8caDwrAAwBABYEHxQFF0xhcG9yYW4gUGVtaW5kYWhhbiBTdG9rHxxnPCsADAEAFgQfFAURTGFwb3JhbiBCYWtpIFN0b2sfHGc8KwAMAQAWBB8UBRRMYXBvcmFuIFBlbnVhYW4gU3Rvax8cZzwrAAwBABYEHxQFDkxhcG9yYW4gUHJvZHVrHxxnPCsADAEAFgQfFAUdTGFwb3JhbiBTdG9rIEJ1a2FuIFBlcmdlcmFrYW4fHGc8KwAMAQAWBB8UBRVMYXBvcmFuIFByZXN0YXNpIFN0b2sfHGg8KwAMAQAWBB8UBRJMYXBvcmFuIExlamFyIFN0b2sfHGc8KwAMAQAWBB8UBQ5MYXBvcmFuIExva2FzaR8cZzwrAAwBABYEHxQFH0xhcG9yYW4gQW5hbGlzaXMgU3RhdGlzdGlrIFN0b2sfHGg8KwAMAQAWAh8caGQ8KwAMAgAWBB8UBRBMYXBvcmFuIEp1cnVqdWFsHxxnAQ9kEBYGZgIBAgICAwIEAgUWBjwrAAwBABYEHxQFI0xhcG9yYW4gUmluZ2thc2FuIFByZXN0YXNpIEp1cnVqdWFsHxxoPCsADAEAFgQfFAUZTGFwb3JhbiBQcmVzdGFzaSBKdXJ1anVhbB8cZzwrAAwBABYEHxQFGExhcG9yYW4gS29sZWtzaSBKdXJ1anVhbB8caDwrAAwBABYEHxQFLFN1cnVoYW5qYXlhIEp1cnVqdWFsIE1lbmdpa3V0IExhcG9yYW4gSGFyaWFuHxxoPCsADAEAFgQfFAUxU3VydWhhbmpheWEgSnVydWp1YWwgTWVuZ2lrdXQgTGFwb3JhbiBQZW5ndW1wdWxhbh8caDwrAAwBABYEHxQFN1N1cnVoYW5qYXlhIEp1cnVqdWFsIE1lbmdpa3V0IExhcG9yYW4gQnVsYW4gUGVuZ3VtcHVsYW4fHGhkPCsADAIAFgQfFAUSTGFwb3JhbiBQZW1iYXlhcmFuHxxnAQ9kEBYDZgIBAgIWAzwrAAwBABYEHxQFEkxhcG9yYW4gUGVtYmF5YXJhbh8cZzwrAAwBABYEHxQFGExhcG9yYW4gTWVkaWEgUGVtYmF5YXJhbh8cZzwrAAwBABYEHxQFIExhcG9yYW4gQnVsYW5hbiBNZWRpYSBQZW1iYXlhcmFuHxxoZDwrAAwCABYEHxQFEUxhcG9yYW4gUGVsYW5nZ2FuHxxnAQ9kEBYIZgIBAgICAwIEAgUCBgIHFgg8KwAMAQAWBB8UBRhMYXBvcmFuIEh1dGFuZyBQZWxhbmdnYW4fHGc8KwAMAQAWBB8UBSNMYXBvcmFuIFJpbmdrYXNhbiBQZW51YWFuIFBlbGFuZ2dhbh8caDwrAAwBABYCHxQFLlJpbmdrYXNhbiBQZW51YWFuIFBlbGFuZ2dhbiBMYXBvcmFuIEVuYW0gQnVsYW48KwAMAQAWBB8UBRlMYXBvcmFuIFBlbnVhYW4gUGVsYW5nZ2FuHxxnPCsADAEAFgQfFAUXTGFwb3JhbiBMZWphciBQZWxhbmdnYW4fHGc8KwAMAQAWBB8UBRtMYXBvcmFuIFBlbnlhdGFhbiBQZWxhbmdnYW4fHGc8KwAMAQAWBB8UBRpMYXBvcmFuIFByZXN0YXNpIFBlbGFuZ2dhbh8cZzwrAAwBABYEHxQFH0xhcG9yYW4gUHJlc3Rhc2kgSXRlbSBQZWxhbmdnYW4fHGdkPCsADAIAFgQfFAUQTGFwb3JhbiBQZW1iZWthbB8cZwEPZBAWBGYCAQICAgMWBDwrAAwBABYEHxQFF0xhcG9yYW4gSHV0YW5nIFBlbWJla2FsHxxnPCsADAEAFgQfFAUiTGFwb3JhbiBSaW5na2FzYW4gUGVudWFhbiBQZW1iZWthbB8caDwrAAwBABYEHxQFGExhcG9yYW4gUGVudWFhbiBQZW1iZWthbB8cZzwrAAwBABYEHxQFFkxhcG9yYW4gTGVqYXIgcGVtYmVrYWwfHGdkPCsADAIAFgQfFAUQTGFwb3JhbiBLZXdhbmdhbh8cZwEPZBAWBWYCAQICAgMCBBYFPCsADAEAFgQfFAUQTGFwb3JhbiBMZWphciBBbR8caDwrAAwBABYEHxQFFExhcG9yYW4gVW50dW5nIEthc2FyHxxnPCsADAEAFgQfFAUUTGFwb3JhbiBVbnR1bmcgJlJ1Z2kfHGc8KwAMAQAWBB8UBRpMYXBvcmFuIEltYmFuZ2FuIFBlcmN1YmFhbh8caDwrAAwBABYEHxQFGUxhcG9yYW4gTGVtYmFyYW4gSW1iYW5nYW4fHGhkPCsADAIAFgQfFAUQTGFwb3JhbiBL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ZGQCAQ8PFgIfFAUBN2RkAgIPDxYCHxQFB0pUUzc3NjVkZAIDD2QWAmYPDxYCHxQFDEFTWUlRIERBTklBTGRkAgQPDxYCHxQFDEFTWUlRIERBTklBTGRkAgUPDxYCHxQFA01ZUmRkAgYPDxYCHxQFCjEuMDAwMDAwMDBkZAIHD2QWAmYPDxYCHxRlZGQCCA8PFgIfFAUGJm5ic3A7ZGQCCQ8PFgIfFAUBQ2RkAgIPZBYCAgEPPCsACwIADxYCHxxoZAE8KwALAQA8KwAEAQAWAh4KSGVhZGVyVGV4dAUHVmVoaWNsZWQCDw8WAh8cZxYqAgEPZBYEAgEPPCsABAEADxYCHyEFDEJhcnUgVmVoaWNsZWRkAgMPZBYCAgEPDxYCHxQFATdkZAIDDw9kFgIfKwWuAWlmKGV2ZW50LndoaWNoIHx8IGV2ZW50LmtleUNvZGUpe2lmICgoZXZlbnQud2hpY2ggPT0gMTMpIHx8IChldmVudC5rZXlDb2RlID09IDEzKSkge19fZG9Qb3N0QmFjaygnY3RsMDAkTWFpbkNvbnRlbnQkYnRuTG9va3VwVmVoaWNsZScsJycpO3JldHVybiBmYWxzZTt9fSBlbHNlIHtyZXR1cm4gdHJ1ZX07IGQCBQ8PFgIfFAUFTGloYXRkZAIHDzwrACYDAA8WAh4NY2FsbGJhY2tTdGF0ZQWABFJSaUlONGw1dURNa3R0YW52K09HdkxHVU1md1FFeUUrZVlZQlllVUYra0hUV2NVWXV5S2djOEl3ZVV6emw0MGszTkRhZkdNbTNLT1NtakJ1NWNwWGVSdEx6OXpoMFRzSk9NNThlbFVnMTh5Z2ZZZXh4dThVWXc1ZEtvbEJwekZiYXpWbGl3YU9yeHA4b1ZWeDgwYVU0T3JNeDFaSk9yTkFPSnBHMiswNmtMQnc0akRjMTUvOFFIQUZWbUhkYmppeE9jSFRNL3RDSk1BZE1Yd21wTkE0S1dnYXpkNDVoMHkrZlJ6bXFZbjZVUXprd2k2MkxRcHhUR1BYSEZBU0dVV1BuQmtlRXBhV3ArSDUxUFNkVklLbGVzSVg4dUtXSWRCeEpQRmpLSUFBVEtiT3dJcDNUQWRDQzUzZDQ4bURtZUdCOXFsQkY1QkdTVnhPUk5QYUxwSDliZlJ5WGpoOWNtUlZxQkpLdjhOZ3RZQlE5aDdYbjRrL3NFUWJzVHVuZ2VwaXMzU2JjKzBTSjl4TEQrLzM0dTU1SFhpOWowakdla3ZxQnNCMUlpNEpzRVVRREdZdXZYMktLMnRNQU5qRkNWVHhTeTdRaUpabE40MDB1SmpEN1ZNdmxYQXZhVVR6MXlkQlNWUUVLaDM3WmovbjE4OGpRREs5OERyOWFKNk9JVTdOZAYPZBAWBmYCAQICAgMCBAIFFgY8KwAMAQAWAh4LR2xvYmFsSW5kZXhmPCsADAEAFgYeB0NhcHRpb24FB1ZlaGljbGUfLWYfNAIBPCsADAEAFgQfLQIBHzQCAjwrAAwBABYCHzQCAzwrAAwBABYCHzQCBDwrAAwBABYCHzQCBQ8WBgIBAgECAQIBAgECARYBBYABRGV2RXhwcmVzcy5XZWIuR3JpZFZpZXdEYXRhVGV4dENvbHVtbiwgRGV2RXhwcmVzcy5XZWIudjE4LjIsIFZlcnNpb249MTguMi4xMS4wLCBDdWx0dXJlPW5ldXRyYWwsIFB1YmxpY0tleVRva2VuPWI4OGQxNzU0ZDcwMGU0OWEYPCsABwEFFCsAAmRkZAIJDw8WAh8UBQdWZWhpY2xlZGQCCw8PFgIfFGVkZAINDw8WAh8UBQItMWRkAg8PDxYCHxQFHENhdGF0YW4gTWlsZWFnZSAvIFBlcmluZ2F0YW5kZAITD2QWBgIBDw8WAh8UBQRCYXJ1ZGQCAw8PFgIfFAUHVmVoaWNsZWRkAgcPDxYCHxQFBU1vZGVsZGQCFQ9kFgYCAQ8PFgIfFAUIQWxhbWF0IDFkZAIFDw8WAh8UBQhBbGFtYXQgMmRkAgkPDxYCHxQFCEFsYW1hdCAzZGQCFw8PFgIfFAUNSHVidW5naSBPcmFuZ2RkAhsPPCsACQEADxYCHyZnZBYCZg9kFgJmD2QWAmYPZBYCZg9kFgICAQ9kFgJmD2QWAmYPZBYCAgEPZBYCAgEPZBYGAgEPDxYCHxQFGlRlbGVwaG9uZSAxIDogMDExMjg4MTc3NDUgZGQCAw8PFgIfFAUPVGVsZXBob25lIDIgOiAgZGQCBQ8PFgIfFAUORmF4IE51bWJlciA6ICBkZAIfD2QWAmYPZBYIAgEPDxYCHxQFFU5vbWJvciBUZWxlZm9uIEJpbWJpdGRkAgMPFCsABg8WBB8dZx8hBQJNWWRkZDwrAA8BDhQrAAYWAh8saGRkDxYCHyBnDxQrAA4UKwABFgYfFAUOQ2hvb3NlIENvdW50cnkfIWUfI2cUKwABFggfFAUJTVkgKCs2MCkgHyEFAk1ZHyIFKy9lTUFYUk5SQkFSQUtBSC9JbWFnZXMvQ291bnRyeS9tYWxheXNpYS5wbmcfI2cUKwABFggfFAUJU0cgKCs2NSkgHyEFAlNHHyIFLC9lTUFYUk5SQkFSQUtBSC9JbWFnZXMvQ291bnRyeS9zaW5nYXBvcmUucG5nHyNnFCsAARYIHxQFCkxBICgrODU2KSAfIQUCTEEfIgUnL2VNQVhSTlJCQVJBS0FIL0ltYWdlcy9Db3VudHJ5L2xhb3MucG5nHyNnFCsAARYIHxQFCFVTICgrMSkgHyEFAlVTHyIFKi9lTUFYUk5SQkFSQUtBSC9JbWFnZXMvQ291bnRyeS9hbWVyaWNhLnBuZx8jZxQrAAEWCB8UBQlDTiAoKzg2KSAfIQUCQ04fIgUoL2VNQVhSTlJCQVJBS0FIL0ltYWdlcy9Db3VudHJ5L2NoaW5hLnBuZx8jZxQrAAEWCB8UBQlERSAoKzQ5KSAfIQUCREUfIgUqL2VNQVhSTlJCQVJBS0FIL0ltYWdlcy9Db3VudHJ5L2dlcm1hbnkucG5nHyNnFCsAARYIHxQFCUlOICgrOTEpIB8hBQJJTh8iBSgvZU1BWFJOUkJBUkFLQUgvSW1hZ2VzL0NvdW50cnkvaW5kaWEucG5nHyNnFCsAARYIHxQFCUlEICgrNjIpIB8hBQJJRB8iBSwvZU1BWFJOUkJBUkFLQUgvSW1hZ2VzL0NvdW50cnkvaW5kb25lc2lhLnBuZx8jZxQrAAEWCB8UBQlKUCAoKzgxKSAfIQUCSlAfIgUoL2VNQVhSTlJCQVJBS0FIL0ltYWdlcy9Db3VudHJ5L2phcGFuLnBuZx8jZxQrAAEWCB8UBQlLUiAoKzgyKSAfIQUCS1IfIgUoL2VNQVhSTlJCQVJBS0FIL0ltYWdlcy9Db3VudHJ5L2tvcmVhLnBuZx8jZxQrAAEWCB8UBQpUVyAoKzg4NikgHyEFAlRXHyIFKS9lTUFYUk5SQkFSQUtBSC9JbWFnZXMvQ291bnRyeS90YWl3YW4ucG5nHyNnFCsAARYIHxQFCVRIICgrNjYpIB8hBQJUSB8iBSsvZU1BWFJOUkJBUkFLQUgvSW1h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HzsFAzIwMGQCDw9kFgQCAQ8PFgIfFAUFQWthdW5kZAIDDxAPFgYfJwUMQWNjb3VudF9OYW1lHygFCkFjY291bnRfSUQfKWdkEBUYABRGVVJOSVRVUkUgJiBGSVRUSU5HUxBPRkZJQ0UgRVFVSVBNRU5UE0NPTVBVVEVSICYgU09GVFdBUkUIU0lHTkFHRVMHQUlSQ09ORA1NT1RPUiBWRUhJQ0xFHkFDQy5ERVAgLSBGVVJOSVRVUkUgJiBGSVRUSU5HUxpBQ0MuREVQIC0gT0ZGSUNFIEVRVUlQTUVOVB1BQ0MuREVQIC0gQ09NUFVURVIgJiBTT0ZUV0FSRRJBQ0MuREVQIC0gU0lHTkFHRVMRQUNDLkRFUCAtIEFJUkNPTkQYQUNDLkRFUCAtIE1PVE9SIFZFSElDTEVTG0FNT1VOVCBEVUUgVE8vRlJPTSBESVJFQ1RPUgdBQ0NSVUFMDk9USEVSIENSRURJVE9SC1RBWCBBQ0NSVUFMFlBST1ZJU0lPTiBGT1IgVEFYQVRJT04RREVGRVJSRUQgVEFYQVRJT04HQUNDUlVBTA1TSEFSRSBDQVBJVEFMFFJldGFpbmVkIEVhcm5pbmcgQi9GBVNBTEVTDU90aGVyIEluY29tZXMVGAItMQMxNjgBNgI1MgMxNjkFMTcyNDYFMTEyMDgDMTEzAzExNAMxMTgDMTcwBTE3MjQ4BTE3MjUwBDgxOTgDMTExBDIxOTECNDYCNDIDMTIzAzExOQI1MQI0NwUxOTI1NAIzNBQrAxhnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dkZAIRD2QWAgIBDw8WAh8UBQdQZXJjdW1hZGQCEw9kFgQCAQ8PFgIfFAUGTG9rYXNpZGQCAw8QDxYGHycFDUxvY2F0aW9uX05hbWUfKAULTG9jYXRpb25fSUQfKWdkEBUCAAlNYWluIFNob3AVAgItMQExFCsDAmdnZGQCFQ9kFgICAQ9kFgQCAQ8PFgIfFAUFQ3VrYWlkZAIDDxAPFgYfJwUIVGF4X0NvZGUfKAUGVGF4X0lEHylnZBAVFAADQUpTAkRTAkVTAkdTA0lFUwJOUgJOUwNOVFgCT1MGT1MtVFhNAlJTAlNSBFNSLTYGU1ItSldTBVNSLU1TA1NTVANaREEDWlJFA1pSTBUUAi0xAjIzAjE4AjIwAjIyAjE3ATUC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YXlhcmFuIDFkZAIDDw8WAh8caGRkAg8PZBYCAgEPDxYCHxQFFU1ha2x1bWF0IHBlbWJheWFyYW4gMmRkAhEPDxYCHxQFBlRhbWJhaGRkAhMPDxYCHxRlZGQCEw8WAh8cZxYCAgEPPCsACwEBPCsAEAIJPCsABAEAFgIfHGcNPCsABAEAFgIfHGdkAhUPFgIfHGgWBgIBDw8WAh8UBRhUYW5kYXRhbmdhbiBEYWxhbSBPbmxpbmVkZAIDD2QWAgIBDxYCHxxoFgYCBQ8PFgIfFAUdVGFuZGF0YW5nYW4geWFuZyBkaWJlcmkga3Vhc2FkZAIHDw8WAh8UBRRUYW5kYXRhbmdhbiBQZW5lcmltYWRkAgsPZBYCAgEPDxYCHxQFMEtsaWsgRGlzaW5pIHVudHVrIFNpbXBhbiAmIFRhbmRha2FuIERhbGFtIE9ubGluZWRkAgUPFgIfFGVkAiMPDxYEHxQFBlNpbXBhbh4LQ29tbWFuZE5hbWUFBFNhdmUWAh4Hb25jbGljawVHamF2YXNjcmlwdDpkaXNhYmxlQnV0dG9uKCk7X19kb1Bvc3RCYWNrKCdjdGwwMCRNYWluQ29udGVudCRidG5TYXZlJywnJylkAiUPDxYCHxQFBUNldGFrFgIfPgVMamF2YXNjcmlwdDpkaXNhYmxlQnV0dG9uKCk7X19kb1Bvc3RCYWNrKCdjdGwwMCRNYWluQ29udGVudCRidG5TYXZlUHJpbnQnLCcnKWQCJw8WAh8caGQCKQ8WAh8caBYCAgEPFgIfGQL/////D2QCKw8PFgIfFAUIQ2V0YWsgRE8WAh8+BUpqYXZhc2NyaXB0OmRpc2FibGVCdXR0b24oKTtfX2RvUG9zdEJhY2soJ2N0bDAwJE1haW5Db250ZW50JGJ0blByaW50RE8nLCcnKWQCLQ8PFgIfFAUMQ2V0YWsgU2VtdWxhZGQCMQ8PFgIfFAUGS2VsdWFyZGQCPw8PFgIfFGVkZAIhDxYCHyUFEzIwMjU7MDQ7MTQ7MjE7NTU7NTFkAiMPPCsACQIADxYCHyZnZAY8KwATAQAWDB4GUGlubmVkaB4OU2hvd09uUGFnZUxvYWRoHgNUb3BmHgRMZWZ0Zh4JQ29sbGFwc2VkaB4JTWF4aW1pemVkaGQYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFhIFE2N0bDAwJG1udUhlYWRlck1lbnUFIWN0bDAwJE1haW5Db250ZW50JGRkbFNhbGVzbWFuJERERAUsY3RsMDAkTWFpbkNvbnRlbnQkdXNyVmVoaWNsZUNvbnRyb2wkcGNMb2dpbjEFWGN0bDAwJE1haW5Db250ZW50JHVzclZlaGljbGVDb250cm9sJHBjTG9naW4xJFBhbmVsMSRBU1B4Rm9ybUxheW91dE1pZCRDQlZlaGljbGVCcmFuZCREREQFWGN0bDAwJE1haW5Db250ZW50JHVzclZlaGljbGVDb250cm9sJHBjTG9naW4xJFBhbmVsMSRBU1B4Rm9ybUxheW91dE1pZCRDQlZlaGljbGVNb2RlbCREREQFTWN0bDAwJE1haW5Db250ZW50JHVzclZlaGljbGVDb250cm9sJHBjTG9naW4xJFBhbmVsMSRBU1B4Rm9ybUxheW91dE1pZCRidG5TYXZlBU9jdGwwMCRNYWluQ29udGVudCR1c3JWZWhpY2xlQ29udHJvbCRwY0xvZ2luMSRQYW5lbDEkQVNQeEZvcm1MYXlvdXRNaWQkYnRuQ2FuY2VsBRhjdGwwMCRNYWluQ29udGVudCRwY01haW4FIGN0bDAwJE1haW5Db250ZW50JGRkbENvdW50cnkkREREBSRjdGwwMCRNYWluQ29udGVudCR0eHRJbnZvaWNlRGF0ZSREREQFGGN0bDAwJE1haW5Db250ZW50JGNoa0ZPQwUkY3RsMDAkTWFpbkNvbnRlbnQkY2hlY2tCb3hSZXNlcXVlbmNlBR9jdGwwMCRNYWluQ29udGVudCRkZGxTaGlwVG8kREREBR9jdGwwMCRNYWluQ29udGVudCR0eHRET0RhdGUkREREBQ9jdGwwMCRwY0xvYWRpbmcFDWN0bDAwJHBjTG9naW4FMGN0bDAwJHBjTG9naW4kUGFuZWwxJEFTUHhGb3JtTGF5b3V0TWlkJGJ0blN1Ym1pdAUwY3RsMDAkcGNMb2dpbiRQYW5lbDEkQVNQeEZvcm1MYXlvdXRNaWQkYnRuQ2FuY2VsdNPZK+xT2jd5FV0hccevUROF2ueWbmCt436DyNVtovM=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['frmMasterPage'];
if (!theForm) {
    theForm = document.frmMasterPage;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/eMAXRNRBARAKAH/WebResource.axd?d=71aztgNg0yN7uNCT--ME3G6oz3cyFofkS5dtSo5-TQ3MJ8tPDY-Tc9LAWr879jSa3YivjMNwMlVaX77wZNg6tv12E6baAojOiAHluOHWej01&amp;t=638240631755514788" type="text/javascript"></script>


<script src="/eMAXRNRBARAKAH/ScriptResource.axd?d=LbAMf2WuX62QVcSlxzC0Wue9ymV6Q6Eptyr-vZeFYkVs2xJWsv9bom6q2REyy2q_EDWLVekQOhVWmlUdL5I9ee3vTE-0oYBJhMrVBZnNJ3kD3YXfNqeMHUn2_McbeO7etWO1a6xvQKrxX7CAi-gGOojuMZtRhuBzmwaFFb8AKMo1&amp;t=96346c8" type="text/javascript"></script>
<script src="/eMAXRNRBARAKAH/ScriptResource.axd?d=hkh8Ca-HRPqhiOjU7hVoCRcsiC62OWg5ZccPJ8W_4k57VgISFkAUM7c-8qmp8Y6SwDqjXmSBxMyCzF9X4JpCO-56_mL0R9kpK2YJMut2J_ZtFc80mWxCVEnpRpXt02ykOO9lfOMN45VSDDffnJNvGDexzymxr4qF86Uh8bI0kJ76CF7CKBAd8rEsJV2XG5aN0&amp;t=96346c8" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="3906930C" />
	<input type="hidden" name="__SCROLLPOSITIONX" id="__SCROLLPOSITIONX" value="0" />
	<input type="hidden" name="__SCROLLPOSITIONY" id="__SCROLLPOSITIONY" value="0" />
	<input type="hidden" name="__PREVIOUSPAGE" id="__PREVIOUSPAGE" value="qOcOB140qHKXpZaCHqueeiGn158gxPUlDxRooF2oyLf3k72HVn8TAFlZI1Hmc3GTRmEqalznd2YYRzoR8Sq-ovF9Rcy7hhLkHgOZTG8uo9e8IqEZI6XpwqUDtdo13Ko9MFyI2IIOcV3T6-YXCRnObA2" />
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="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" />
</div>

        
        

        <style type="text/css">
            .PDF-viewer {
                width: 99.8%;
                height: 800px;
                border: 0px;
            }

            ul {
                list-style: none;
                margin: 0;
                padding: 0;
            }

            .notification-drop {
                font-family: 'Ubuntu', sans-serif;
                color: #444;
            }

                .notification-drop .item {
                    padding: 10px;
                    font-size: 18px;
                    position: relative;
                    border-bottom: 1px solid #ddd;
                }

                    .notification-drop .item:hover {
                        cursor: pointer;
                    }

                    .notification-drop .item i {
                        margin-left: 10px;
                    }

                    .notification-drop .item ul {
                        display: none;
                        position: absolute;
                        top: 100%;
                        background: #fff;
                        left: -200px;
                        right: 0;
                        z-index: 1;
                        border-top: 1px solid #ddd;
                    }

                        .notification-drop .item ul li {
                            font-size: 16px;
                            padding: 15px 0 15px 25px;
                        }

                            .notification-drop .item ul li:hover {
                                background: #ddd;
                                color: rgba(0, 0, 0, 0.8);
                            }

            @media screen and (min-width: 500px) {
                .notification-drop {
                    display: flex;
                    justify-content: flex-end;
                }

                    .notification-drop .item {
                        border: none;
                    }
            }



            .notification-bell {
                font-size: 20px;
            }

            .btn__badge {
                background: #FF5D5D;
                color: white;
                font-size: 11px;
                position: absolute;
                top: 0;
                right: 0px;
                border-radius: 50%;
                padding: 2px 7px;
            }

            /*.pulse-button {
              box-shadow: 0 0 0 0 rgba(255, 0, 0, 0.5);
              -webkit-animation: pulse 1.5s infinite;
            }

            .pulse-button:hover {
              -webkit-animation: none;
            }*/

            @-webkit-keyframes pulse {
                0% {
                    -moz-transform: scale(0.9);
                    -ms-transform: scale(0.9);
                    -webkit-transform: scale(0.9);
                    transform: scale(0.9);
                }

                70% {
                    -moz-transform: scale(1);
                    -ms-transform: scale(1);
                    -webkit-transform: scale(1);
                    transform: scale(1);
                    box-shadow: 0 0 0 50px rgba(255, 0, 0, 0);
                }

                100% {
                    -moz-transform: scale(0.9);
                    -ms-transform: scale(0.9);
                    -webkit-transform: scale(0.9);
                    transform: scale(0.9);
                    box-shadow: 0 0 0 0 rgba(255, 0, 0, 0);
                }
            }

            .notification-text {
                font-size: 14px;
                font-weight: bold;
            }

                .notification-text span {
                    float: right;
                }
        </style>

        <script type="text/javascript">
            $(document).ready(function () {
                $(".notification-drop .item").on('click', function () {
                    $(this).find('ul').toggle();
                });
            });
        </script>

        <!-- Layout wrapper -->
        <div class="layout-wrapper-hsdummy layout-2">
            <div class="layout-inner-hsdummy">

                <!-- Layout container -->
                <div class="layout-container-hsdummy">

                    <!-- navbar - Page header -->
                    <nav class="top-bar layout-navbar navbar navbar-expand-md align-items-md-center container-p-x" id="layout-navbar">
                        <a href="/eMAXRNRBARAKAH/Main.aspx" id="homeLink">
                            <img src="/eMAXRNRBARAKAH/Images/Logo/Blank.jpg" id="imgLogo" class="user-company-logo" align="absMiddle" />
                        </a>
                        <span class="text-center text-sm-center text-md-left text-lg-left text-xl-left">
                            <span id="lblCompanyName" class="user-company-name">RNR BARAKAH AUTO SERVICES</span>
                            <br />
                            <span id="spanDateTime" class="system-time" title="(UTC+08:00) Kuala Lumpur, Singapore">&nbsp;</span>
                        </span>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#layout-navbar-collapse">
                            <i class="fas fa-bars"></i>
                        </button>

                        <div class="navbar-collapse collapse" id="layout-navbar-collapse">
                            <div class="navbar-nav align-items-lg-center ml-auto">
                                <div class="col-12">
                                    <div class="row">
                                        <ul class="notification-drop" style="display: none;">
                                            <li class="item">
                                                <i class="fas fa-bell fa-lg notification-bell" aria-hidden="true"></i><span class="btn__badge ">
                                                    <span id="lblNotificationCount" class="form-label">4</span></span>
                                                <ul>
                                                    <li>First Item</li>
                                                    <li>Second Item</li>
                                                    <li>Third Item</li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <!-- Divider -->
                                        <div id="trBranchSeperator" class="nav-item d-none d-md-block text-big font-weight-light line-height-1 opacity-25 mr-3 ml-1 " style="display: none; margin-top:7px">|</div>

                                        <span class="text-center text-sm-center text-md-left text-lg-left text-xl-left">
                                            <a id="trMarketingPlace" class="btn" href="javascript:__doPostBack(&#39;ctl00$trMarketingPlace&#39;,&#39;&#39;)">
                                                <span class="display-5 text-dark"><i class="fas fa-store-alt"></i></span>
                                                <span id="lblCaptionMarketingPlace" class="standard-font text">Pasaran</span></a>
                                        </span>
                                        <div id="trMarketingPlaceSeperator" class="nav-item d-none d-md-block text-big font-weight-light line-height-1 opacity-25 mr-3 ml-1" style="margin-top:7px">|</div>
                                        <span class="text-center text-sm-center text-md-left text-lg-left text-xl-left">
                                            <a id="trDashboard" class="btn" href="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$trDashboard&quot;, &quot;&quot;, false, &quot;&quot;, &quot;../Viewing/Dashboard.aspx&quot;, false, true))">
                                                <span class="display-5 text-dark"><i class="fas fa-chart-pie"></i></span>&nbsp;
                                            
                                        <span id="lblCaptionDashboard" class="standard-font text">Papan Pemuka</span></a>
                                        </span>

                                        <!-- Divider -->
                                        <div class="nav-item d-none d-md-block text-big font-weight-light line-height-1 opacity-25 mr-3 ml-1"  style="margin-top:7px" >|</div>

                                        <div class="demo-navbar-user nav-item dropdown top-bar-button">
                                            <a href="../#" id="aToggleLanguage" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                                <span class="d-inline-flex flex-lg-row-reverseXXX align-items-center align-middle">
                                                    <i class="fas fa-language icon"></i>
                                                    <span class="px-1 mr-lg-2 ml-2 ml-lg-0">
                                                        <span id="lblSelectedLanguage" class="standard-font text">Bahasa Malaysia</span>
                                                    </span>
                                                </span>
                                            </a>
                                            <d id="divLanguage" iv="" class="dropdown-menu dropdown-menu-right">
                                                
                                                        <a id="rptrLanguage_lbtnLanguage_0" class="dropdown-item" href="javascript:__doPostBack(&#39;ctl00$rptrLanguage$ctl00$lbtnLanguage&#39;,&#39;&#39;)"><i id="rptrLanguage_iSelectedLanguage_0" class="fas fa-check text-success" style="opacity:0;"></i>&nbsp;
                                                   
                                                    <span id="rptrLanguage_lblLanguageName_0" class="standard-font text-primary">English</span></a>
                                                    
                                                        <a id="rptrLanguage_lbtnLanguage_1" class="dropdown-item" href="javascript:__doPostBack(&#39;ctl00$rptrLanguage$ctl01$lbtnLanguage&#39;,&#39;&#39;)"><i id="rptrLanguage_iSelectedLanguage_1" class="fas fa-check text-success" style="opacity:1;"></i>&nbsp;
                                                   
                                                    <span id="rptrLanguage_lblLanguageName_1" class="standard-font text-primary">Bahasa Malaysia</span></a>
                                                    
                                                        <a id="rptrLanguage_lbtnLanguage_2" class="dropdown-item" href="javascript:__doPostBack(&#39;ctl00$rptrLanguage$ctl02$lbtnLanguage&#39;,&#39;&#39;)"><i id="rptrLanguage_iSelectedLanguage_2" class="fas fa-check text-success" style="opacity:0;"></i>&nbsp;
                                                   
                                                    <span id="rptrLanguage_lblLanguageName_2" class="standard-font text-primary">??</span></a>
                                                    
                                                        <a id="rptrLanguage_lbtnLanguage_3" class="dropdown-item" href="javascript:__doPostBack(&#39;ctl00$rptrLanguage$ctl03$lbtnLanguage&#39;,&#39;&#39;)"><i id="rptrLanguage_iSelectedLanguage_3" class="fas fa-check text-success" style="opacity:0;"></i>&nbsp;
                                                   
                                                    <span id="rptrLanguage_lblLanguageName_3" class="standard-font text-primary">Ti?ng Vi?t</span></a>
                                                    
                                                        <a id="rptrLanguage_lbtnLanguage_4" class="dropdown-item" href="javascript:__doPostBack(&#39;ctl00$rptrLanguage$ctl04$lbtnLanguage&#39;,&#39;&#39;)"><i id="rptrLanguage_iSelectedLanguage_4" class="fas fa-check text-success" style="opacity:0;"></i>&nbsp;
                                                   
                                                    <span id="rptrLanguage_lblLanguageName_4" class="standard-font text-primary">Indonesian</span></a>
                                                    
                                            </d>
                                        </div>

                                        <!-- Divider -->
                                        

                                        
                                        
                                        <script type="text/javascript">

                                            var checkbox = window.chkSelectedBranch;
                                            var oldValue = ""; //checkbox.GetSelectedValues();

                                            //console.log("value awal " + oldValue);
                                            var target1 = document.querySelector('#divBranch')
                                            var target = document.querySelector('#divBranchCb')
                                            var divBranchStatus = "Closed";
                                            var tick = "false";

                                            document.addEventListener('DOMContentLoaded', function () {
                                                //setCheckedState();
                                                if (oldValue == "") {
                                                    oldValue = checkbox.GetSelectedValues();
                                                }

                                                var dropdownLink = document.getElementById('myDropdownLink');
                                                if (dropdownLink) {
                                                    dropdownLink.addEventListener('click', function (event) {
                                                        if (divBranchStatus == "Open") {
                                                            var checkbox1 = window.chkSelectedBranch;
                                                            var newValue = checkbox1.GetSelectedValues();
                                                            console.log("newValue " + newValue);
                                                            if (oldValue == newValue) {
                                                                divBranchStatus = "Closed";
                                                                console.log(divBranchStatus);
                                                                console.log("1");
                                                            }
                                                            else {
                                                                if (newValue == "") {
                                                                    //alert("lancau");
                                                                    Swal.fire({
                                                                        position: "center",
                                                                        icon: "error",
                                                                        title: "Please Select at least 1, reversing to the previous selection",
                                                                        showConfirmButton: false,
                                                                        timer: 1500
                                                                    }).then(function () {
                                                                        __doPostBack();
                                                                    });
                                                                }
                                                                else {
                                                                    __doPostBack();
                                                                }
                                                            }
                                                        } else {
                                                            divBranchStatus = "Open";
                                                            console.log(divBranchStatus);
                                                            console.log("6");

                                                        }
                                                    });
                                                }
                                            });
                                            document.addEventListener('click', (event) => {
                                                if (oldValue == "") {
                                                    oldValue = checkbox.GetSelectedValues();
                                                }
                                                const withinBoundaries = event.composedPath().includes(target);
                                                if (divBranchStatus === "Open") {
                                                    if (withinBoundaries) {
                                                    } else {
                                                        var checkbox1 = window.chkSelectedBranch;
                                                        var newValue = checkbox1.GetSelectedValues();
                                                        //console.log("value kemudian " + newValue);

                                                        if (oldValue == newValue) {
                                                            console.log(divBranchStatus);
                                                            //console.log("2");
                                                        }
                                                        else {
                                                            if (newValue == "") {
                                                                Swal.fire({
                                                                    position: "center",
                                                                    icon: "error",
                                                                    title: "Please Select at least 1, reversing to the previous selection",
                                                                    showConfirmButton: false,
                                                                    timer: 1500
                                                                }).then(function () {
                                                                    __doPostBack();
                                                                });
                                                            }
                                                            else {
                                                                __doPostBack();
                                                            }
                                                        }
                                                    }
                                                };

                                                const withinBoundaries1 = event.composedPath().includes(target1);
                                                if (withinBoundaries1) {
                                                    divBranchStatus = "Open";
                                                    //console.log(divBranchStatus);
                                                    //console.log("3");
                                                } else {
                                                    divBranchStatus = "Closed";
                                                    //console.log(divBranchStatus);
                                                    //console.log("4");
                                                };

                                            })

                                            $("#divBranchCb").on("click", function (e) {
                                                e.stopPropagation();
                                                console.log(divBranchStatus);
                                                //console.log("5");
                                            });

                                            function postzBack() {
                                                __doPostBack();
                                            }


                                    //document.addEventListener('click', (event) => {
                                    //    const withinBoundaries = event.composedPath().includes(target)
                                    //    if (divBranchStatus === "Open") {
                                    //        if (withinBoundaries) {
                                    //            //target.innerText = 'Click happened inside element'
                                    //        } else {
                                    //            __doPostBack();
                                    //        }
                                    //    }

                                    //})

                                    //$(document).ready(function () {
                                    //    $("#divBranch").on("click", function () {

                                    //        if (counterrrrr % 2 === 0) {
                                    //            document.addEventListener('click', (event) => {
                                    //                const withinBoundaries = event.composedPath().includes(target)
                                    //                if (withinBoundaries) {
                                    //                    //target.innerText = 'Click happened inside element'
                                    //                } else {
                                    //                    __doPostBack();
                                    //                }
                                    //            })
                                    //        }
                                    //        else {
                                    //            var newCounter = parseInt(counterrrrr) + 1;
                                    //            console.log("from mod false " + newCounter);
                                    //            localStorage.setItem("branchClick", newCounter);
                                    //        }
                                    //    });
                                    //});


                                    //document.addEventListener('click', (event) => {
                                    //    const withinBoundaries = event.composedPath().includes(target)
                                    //    if (withinBoundaries) {
                                    //        //target.innerText = 'Click happened inside element'
                                    //    } else {
                                    //        __doPostBack();
                                    //    }
                                    //})

                                    //$(document).ready(function () {
                                    //    $("#divBranchCb").on("focusout", function () {//focusout

                                    //        $("#divBranchCb").on("mouseleave", function () {
                                    //            //__doPostBack();
                                    //            setTimeout(function () {
                                    //                __doPostBack();
                                    //            }, 1000);
                                    //        });
                                    //    });
                                    //});

                                    //$("#divBranchCb").on("click", function (e) {
                                    //    e.stopPropagation();
                                    //});
                                        </script>

                                        <!-- Divider -->
                                        <div class="nav-item d-none d-md-block text-big font-weight-light line-height-1 opacity-25 mr-3 ml-1"  style="margin-top:7px" >|</div>

                                        <!-- User Account Menu Button -->
                                        <div id="divUserAccount" class="demo-navbar-user nav-item dropdown top-bar-button">
                                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown">
                                                <span class="d-inline-flex flex-lg-row-reverseXXX align-items-center align-middle">
                                                    <i class="fas fa-user icon"></i>
                                                    <span class="px-1 mr-lg-2 ml-2 ml-lg-0">
                                                        <span id="lblUserName" title="Admin
Admin
(UTC+08:00) Kuala Lumpur, Singapore" class="text">Admin</span>
                                                        
                                                    </span>
                                                </span>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a id="hlUserProfile" class="dropdown-item d-inline-flex" href="../Admin/Master_User_Profile.aspx">
                                                    <i class="fa fa-user-circle text-primary icon"></i>
                                                    <span id="spanUserProfile" class="text-primary">My Profil</span></a>
                                                <a id="hlChangePassword" class="dropdown-item d-inline-flex" href="../Admin/Master_Change_Password.aspx">
                                                    <i class="fa fa-key text-primary icon"></i>
                                                    <span id="spanChangePassword" class="text-primary">Tukar Password</span></a>

                                                <div class="dropdown-divider"></div>

                                                

                                                <a id="hlHelp" class="dropdown-item d-inline-flex" href="https://drive.google.com/file/d/1O6QJND7-rgliF_zk0SWEw0JzqkYVEO6O/view" target="_blank">
                                                    <i class="fa fa-question-circle text-secondary icon"></i>
                                                    <span id="spanUserGuide" class="text-secondary">Panduan pengguna</span></a>
                                                <a class="dropdown-item d-inline-flex" onclick="ShowLoginWindow()">
                                                    <i class="fa fa-comment text-secondary icon"></i>
                                                    <span id="spanFeedback" class="text-secondary">Maklum Balas</span>
                                                </a>
                                                <a id="hlWebmax" class="dropdown-item d-inline-flex" href="https://www.webmaxtec.com/emax-version/" target="_blank">
                                                    <i class="fas fa-globe-asia text-dark icon"></i>
                                                    <span id="spanVersion" class="text-secondary">v3.1.09.20240702D</span></a>

                                                <div class="dropdown-divider"></div>

                                                <a id="hlLogout" class="dropdown-item d-inline-flex" href="../Logout.aspx">
                                                    <i class="fa fa-power-off text-danger icon"></i>
                                                    <span id="spanLogOut" class="text-danger">Log Keluar</span></a>
                                            </div>
                                        </div>

                                    </div>
                                    <div id="divSelectedBranchName" class="row d-flex justify-content-end">
                                        <div class="d-flex justify-content-end">
                                            <span id="selectedBranchName" class="form-label" style="color:Black;font-size:Small;">Selected Branch: All Branch</span>&nbsp;&nbsp;
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </nav>


                    
                    <div id="divTop" class="menu-container-hsdummy">
                        <table cellspacing="0" cellpadding="0" width="100%" border="0">
                            <tr>
                                <td>
                                    <script id="dxis_1202936958" src="/eMAXRNRBARAKAH/DXR.axd?r=1_10,1_11,1_22,1_62,1_12,1_13,1_14,1_16,1_23,1_32,1_257,1_258,1_20,1_21,1_264,1_260,1_267,1_40,1_59,1_256,1_266,1_268,1_262-ww8An" type="text/javascript"></script><div class="dxmLite_Moderno dxm-ltr">
	<div class="dxm-main dxm-horizontal" id="mnuHeaderMenu" style="background-color:#2D353C;font-weight:normal;width:100%;padding-left:3px;padding-right:3px;">
		<ul class="dx dxm-image-l dxm-noImages">
			<li class="dxm-item menu-bar menu-item nav-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">CRM</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li><li class="dxm-item menu-bar menu-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">Jualan</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li><li class="dxm-item menu-bar menu-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">Pembelian</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li><li class="dxm-item menu-bar menu-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">Stok</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li><li class="dxm-item menu-bar menu-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">Kewangan</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li><li class="dxm-item menu-bar menu-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">Penggajian</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li><li class="dxm-item menu-bar menu-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">Melihat</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li><li class="dxm-item menu-bar menu-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">Laporan</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li><li class="dxm-item menu-bar menu-item dxm-subMenu" style="font-weight:normal;"><div class="dxm-content dxm-hasText">
				<span class="dx-vam">Tetapan</span>
			</div><div class="dxm-popOut dropdown-toggle">
				<img class="dxWeb_mHorizontalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div></li><li class="dxm-separator"><b style="background-color:Transparent;"></b></li>
		</ul>
	</div><b class="dx-clear"></b><div id="mnuHeaderMenu_DXM0_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB0_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Customer_Lead.aspx" style="font-weight:normal;"><span class="dx-vam">Tarikan Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../CRM/Service_Reminder_2.aspx" style="font-weight:normal;"><span class="dx-vam">Peringatan Perkhidmatan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../CRM/Opportunity.aspx" style="font-weight:normal;"><span class="dx-vam">Peluang</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../CRM/Service_Appointment.aspx" style="font-weight:normal;"><span class="dx-vam">Pelantikan Perkhidmatan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Service_Type.aspx" style="font-weight:normal;"><span class="dx-vam">Jenis Perkhidmatan</span></a><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB0_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div><div id="mnuHeaderMenu_DXM4_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB4_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Quotation.aspx" style="font-weight:normal;"><span class="dx-vam">Sebutharga</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Sales_Order.aspx" style="font-weight:normal;"><span class="dx-vam">Pesanan jualan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Sales_Invoice.aspx" style="font-weight:normal;"><span class="dx-vam">Invois</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Sales_Cash.aspx" style="font-weight:normal;"><span class="dx-vam">Jualan Tunai</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Customer_Return.aspx" style="font-weight:normal;"><span class="dx-vam">Pengembalian Pelanggan / CN</span></a><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB4_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div><div id="mnuHeaderMenu_DXM5_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB5_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Purchase.aspx" style="font-weight:normal;"><span class="dx-vam">Invois Pembelian</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Purchase_Return.aspx" style="font-weight:normal;"><span class="dx-vam">Pulangan Pembelian / CN</span></a><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB5_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div><div id="mnuHeaderMenu_DXM6_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB6_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Inventory.aspx" style="font-weight:normal;"><span class="dx-vam">Mengekalkan Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Transfer_In.aspx" style="font-weight:normal;"><span class="dx-vam">Pindah Masuk</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Transfer_Out.aspx" style="font-weight:normal;"><span class="dx-vam">Pindah Keluar</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Process/Stock_Adjustment.aspx" style="font-weight:normal;"><span class="dx-vam">Pelarasan Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Process/Stock_Count.aspx" style="font-weight:normal;"><span class="dx-vam">Kira Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Process/Location_Transfer.aspx" style="font-weight:normal;"><span class="dx-vam">Penempatan Semula Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Pengurusan</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB6_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div><div id="mnuHeaderMenu_DXM6i7_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Location.aspx" style="font-weight:normal;"><span class="dx-vam">Lokasi</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM7_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB7_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Account.aspx" style="font-weight:normal;"><span class="dx-vam">Mengekalkan Akaun</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Process/Invoice_Cost_Price.aspx" style="font-weight:normal;"><span class="dx-vam">Kemas kini Harga Kos</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Payment_Receive.aspx" style="font-weight:normal;"><span class="dx-vam">Terima Bayaran</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Payment_Issue.aspx" style="font-weight:normal;"><span class="dx-vam">Buat bayaran</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Payment_Contra.aspx" style="font-weight:normal;"><span class="dx-vam">Kontra Pembayaran</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../HR/Journal_Entry.aspx" style="font-weight:normal;"><span class="dx-vam">Kemasukan jurnal</span></a><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB7_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div><div id="mnuHeaderMenu_DXM8_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB8_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Outstanding_Salary.aspx" style="font-weight:normal;"><span class="dx-vam">Hutang Gaji</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="Employee_Salary.aspx" style="font-weight:normal;"><span class="dx-vam">Gaji</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Pengurusan</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-noSubMenu" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Salary_Summary.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Gaji</span></a><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB8_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div><div id="mnuHeaderMenu_DXM8i2_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Allowance_Master.aspx" style="font-weight:normal;"><span class="dx-vam">Perolehan Gaji</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Deduction.aspx" style="font-weight:normal;"><span class="dx-vam">Potongan Gaji</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Socso_Master.aspx" style="font-weight:normal;"><span class="dx-vam">Perkeso</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_EIS.aspx" style="font-weight:normal;"><span class="dx-vam">EIS</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/PCB_Master.aspx" style="font-weight:normal;"><span class="dx-vam">Potongan Cukai Bulanan(PCB)</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM9_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB9_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Quotation_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Quotation Detail</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Order_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Pesanan Jualan Detail&nbsp;</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Sales_Invoice_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Jualan Detail</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Purchase_Detail_Viewing.aspx" style="font-weight:normal;"><span class="dx-vam">Butiran Invois Pembelian</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Stock_Viewing.aspx" style="font-weight:normal;"><span class="dx-vam">Butiran Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Transfer_Detail_Viewing.aspx" style="font-weight:normal;"><span class="dx-vam">Butiran Transfer Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Location_Transfer_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Detail Relokasi Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Receive_Payment_Viewing.aspx" style="font-weight:normal;"><span class="dx-vam">Terima Detail Pembayaran</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Issue_Payment_Viewing.aspx" style="font-weight:normal;"><span class="dx-vam">Buat&nbsp; Pembayaran Detail</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Journal_Entry_Viewing.aspx" style="font-weight:normal;"><span class="dx-vam">Kemasukan jurnal Detail</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/Sales_Log.aspx" style="font-weight:normal;"><span class="dx-vam">Log Urus niaga</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Viewing/User_Access_Log.aspx" style="font-weight:normal;"><span class="dx-vam">Log Akses Pengguna</span></a><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB9_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div><div id="mnuHeaderMenu_DXM10_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB10_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Laporan Jualan</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Laporan Pembelian</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Laporan Stok</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Laporan Jurujual</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Laporan Pembayaran</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Laporan Pelanggan</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Laporan Pembekal</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item dxm-subMenu" style="border-color:Transparent;border-width:1px;border-style:solid;font-weight:normal;"><div class="dxm-content dxm-hasText">
						<span class="dx-vam">Laporan Kewangan</span>
					</div><div class="dxm-popOut">
						<img class="dxWeb_mVerticalPopOut_Moderno dxm-pImage" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" />
					</div><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB10_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div><div id="mnuHeaderMenu_DXM10i0_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Sales_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Jualan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Sales_Monthly.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Jualan Harian</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Sales_Yearly.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Jualan Bulanan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Customer_Return_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Penyata Pulangan Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Item_Sales.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Jualan Item</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM10i1_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Purchase_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan pembelian</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Purchase_Return_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Penyata Pulangan Pembelian</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Item_Purchase.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Pembelian Item</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM10i3_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Stock_Transfer_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Pemindahan Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Stock_Balance.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Baki Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Stock_Aging.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Penuaan Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Product.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Produk</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Stock_No_Movement.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Stok Bukan Pergerakan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Stock_Ledger.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Lejar Stok</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Location.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Lokasi</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM10i4_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Salesman_Performance_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Prestasi Jurujual</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM10i5_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Payment.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Pembayaran</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Payment_Media.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Media Pembayaran</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM10i6_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Customer_Outstanding.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Hutang Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Customer_Aging_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Penuaan Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Customer_Ledger.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Lejar Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Customer_Statement.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Penyataan Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Customer_Performance.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Prestasi Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Customer_Item_Performance.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Prestasi Item Pelanggan</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM10i7_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Supplier_Outstanding.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Hutang Pembekal</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Supplier_Aging_Detail.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Penuaan Pembekal</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Supplier_Ledger.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Lejar pembekal</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM10i8_" style="z-index:20004;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<ul class="dx dxm-noImages dxm-gutter">
				<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Gross_Profit.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Untung Kasar</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Report/Rpt_Profit_Loss.aspx" style="font-weight:normal;"><span class="dx-vam">Laporan Untung &amp;Rugi</span></a><b class="dx-clear"></b></li>
			</ul>
		</div>
	</div><div id="mnuHeaderMenu_DXM11_" style="z-index:20002;display:none;">
		<div class="dxm-shadow dxm-popup menu-popup" style="font-weight:normal;">
			<div class="dxm-scrollUpBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB11_UImg" class="dxWeb_mScrollUp_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="^" />
			</div><div class="dxm-scrollArea">
				<ul class="dx dxm-noImages dxm-gutter">
					<li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_System.aspx" style="font-weight:normal;"><span class="dx-vam">Sistem</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Branch.aspx" style="font-weight:normal;"><span class="dx-vam">Cawangan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Tax.aspx" style="font-weight:normal;"><span class="dx-vam">Cukai</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Employee.aspx" style="font-weight:normal;"><span class="dx-vam">Pekerja</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Customer.aspx" style="font-weight:normal;"><span class="dx-vam">Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Customer_Price_List.aspx" style="font-weight:normal;"><span class="dx-vam">Senarai Harga Pelanggan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Supplier.aspx" style="font-weight:normal;"><span class="dx-vam">Pembekal</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Vehicle.aspx" style="font-weight:normal;"><span class="dx-vam">Vehicle</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Vehicle_Checklist.aspx" style="font-weight:normal;"><span class="dx-vam">Senarai Semak Kenderaan</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Caption.aspx" style="font-weight:normal;"><span class="dx-vam">Kapsyen</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Config.aspx" style="font-weight:normal;"><span class="dx-vam">Konfig</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Database_Backup.aspx" style="font-weight:normal;"><span class="dx-vam">Pangkalan data</span></a><b class="dx-clear"></b></li><li class="dxm-spacing"></li><li class="dxm-item menu-item" style="border-color:Transparent;border-width:1px;border-style:solid;"><a class="dxm-content dxm-hasText dx" href="../Admin/Master_Change_Code.aspx" style="font-weight:normal;"><span class="dx-vam">Tukar Kod</span></a><b class="dx-clear"></b></li>
				</ul>
			</div><div class="dxm-scrollDownBtn" style="display:none;">
				<img id="mnuHeaderMenu_DXSB11_DImg" class="dxWeb_mScrollDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" />
			</div>
		</div>
	</div>
</div><script id="dxss_1811661565" type="text/javascript">
<!--
ASPx.AddHoverItems('mnuHeaderMenu',[[['dxm-hovered menu-bar menu-item hovered','',''],['','',''],['DXI0_','DXI4_','DXI5_','DXI6_','DXI7_','DXI8_','DXI9_','DXI10_','DXI11_'],['','P','T']],[[''],[''],['DXME0_','DXMBC0_','DXME4_','DXMBC4_','DXME5_','DXMBC5_','DXME6_','DXMBC6_','DXME6i7_','DXMBC6i7_','DXME7_','DXMBC7_','DXME8_','DXMBC8_','DXME8i2_','DXMBC8i2_','DXME9_','DXMBC9_','DXME10_','DXMBC10_','DXME10i0_','DXMBC10i0_','DXME10i1_','DXMBC10i1_','DXME10i3_','DXMBC10i3_','DXME10i4_','DXMBC10i4_','DXME10i5_','DXMBC10i5_','DXME10i6_','DXMBC10i6_','DXME10i7_','DXMBC10i7_','DXME10i8_','DXMBC10i8_','DXME11_','DXMBC11_']],[['dxm-hovered',''],['border-color:#0D588A;border-width:1px;border-style:solid;',''],['DXI0i0_','DXI0i1_','DXI0i2_','DXI0i3_','DXI0i4_','DXI4i0_','DXI4i1_','DXI4i3_','DXI4i4_','DXI4i6_','DXI5i4_','DXI5i6_','DXI6i7i2_','DXI7i0_','DXI7i1_','DXI7i3_','DXI7i4_','DXI7i5_','DXI7i6_','DXI8i2i0_','DXI8i2i1_','DXI8i2i8_','DXI8i2i9_','DXI8i2i10_','DXI9i1_','DXI9i2_','DXI9i4_','DXI9i8_','DXI9i10_','DXI9i11_','DXI9i12_','DXI9i13_','DXI9i14_','DXI9i15_','DXI9i17_','DXI9i18_','DXI10i0i1_','DXI10i0i3_','DXI10i0i4_','DXI10i0i7_','DXI10i0i8_','DXI10i1i1_','DXI10i1i3_','DXI10i1i4_','DXI10i3i1_','DXI10i3i2_','DXI10i3i3_','DXI10i3i4_','DXI10i3i5_','DXI10i3i7_','DXI10i3i8_','DXI10i4i1_','DXI10i5i0_','DXI10i5i1_','DXI10i6i0_','DXI10i6i3_','DXI10i6i4_','DXI10i6i5_','DXI10i6i6_','DXI10i6i7_','DXI10i7i0_','DXI10i7i2_','DXI10i7i3_','DXI10i8i1_','DXI10i8i2_','DXI11i0_','DXI11i2_','DXI11i4_','DXI11i5_','DXI11i7_','DXI11i8_','DXI11i9_','DXI11i10_','DXI11i11_','DXI11i13_','DXI11i14_','DXI11i15_','DXI11i16_'],['','T']],[['dxm-scrollBtnHovered'],[''],['DXSB0_U','DXSB0_D','DXSB4_U','DXSB4_D','DXSB5_U','DXSB5_D','DXSB6_U','DXSB6_D','DXSB7_U','DXSB7_D','DXSB8_U','DXSB8_D','DXSB9_U','DXSB9_D','DXSB10_U','DXSB10_D','DXSB11_U','DXSB11_D']],[['dxm-hovered','',''],['border-color:#0D588A;border-width:1px;border-style:solid;','',''],['DXI6i0_','DXI6i1_','DXI6i2_','DXI6i3_','DXI6i4_','DXI6i5_','DXI6i7_','DXI8i0_','DXI8i1_','DXI8i2_','DXI8i3_','DXI10i0_','DXI10i1_','DXI10i3_','DXI10i4_','DXI10i5_','DXI10i6_','DXI10i7_','DXI10i8_'],['','P','T']]]);
ASPx.AddPressedItems('mnuHeaderMenu',[[['dxm-scrollBtnPressed'],[''],['DXSB0_U','DXSB0_D','DXSB4_U','DXSB4_D','DXSB5_U','DXSB5_D','DXSB6_U','DXSB6_D','DXSB7_U','DXSB7_D','DXSB8_U','DXSB8_D','DXSB9_U','DXSB9_D','DXSB10_U','DXSB10_D','DXSB11_U','DXSB11_D']]]);
ASPx.AddSelectedItems('mnuHeaderMenu',[[['dxm-selected menu-bar menu-item hovered','',''],['','',''],['DXI0_','DXI4_','DXI5_','DXI6_','DXI7_','DXI8_','DXI9_','DXI10_','DXI11_'],['','P','T']],[['dxm-selected',''],['border-color:Transparent;border-width:1px;border-style:solid;',''],['DXI0i0_','DXI0i1_','DXI0i2_','DXI0i3_','DXI0i4_','DXI4i0_','DXI4i1_','DXI4i3_','DXI4i4_','DXI4i6_','DXI5i4_','DXI5i6_','DXI6i7i2_','DXI7i0_','DXI7i1_','DXI7i3_','DXI7i4_','DXI7i5_','DXI7i6_','DXI8i2i0_','DXI8i2i1_','DXI8i2i8_','DXI8i2i9_','DXI8i2i10_','DXI9i1_','DXI9i2_','DXI9i4_','DXI9i8_','DXI9i10_','DXI9i11_','DXI9i12_','DXI9i13_','DXI9i14_','DXI9i15_','DXI9i17_','DXI9i18_','DXI10i0i1_','DXI10i0i3_','DXI10i0i4_','DXI10i0i7_','DXI10i0i8_','DXI10i1i1_','DXI10i1i3_','DXI10i1i4_','DXI10i3i1_','DXI10i3i2_','DXI10i3i3_','DXI10i3i4_','DXI10i3i5_','DXI10i3i7_','DXI10i3i8_','DXI10i4i1_','DXI10i5i0_','DXI10i5i1_','DXI10i6i0_','DXI10i6i3_','DXI10i6i4_','DXI10i6i5_','DXI10i6i6_','DXI10i6i7_','DXI10i7i0_','DXI10i7i2_','DXI10i7i3_','DXI10i8i1_','DXI10i8i2_','DXI11i0_','DXI11i2_','DXI11i4_','DXI11i5_','DXI11i7_','DXI11i8_','DXI11i9_','DXI11i10_','DXI11i11_','DXI11i13_','DXI11i14_','DXI11i15_','DXI11i16_'],['','T']],[['dxm-selected','',''],['border-color:Transparent;border-width:1px;border-style:solid;','',''],['DXI6i0_','DXI6i1_','DXI6i2_','DXI6i3_','DXI6i4_','DXI6i5_','DXI6i7_','DXI8i0_','DXI8i1_','DXI8i2_','DXI8i3_','DXI10i0_','DXI10i1_','DXI10i3_','DXI10i4_','DXI10i5_','DXI10i6_','DXI10i7_','DXI10i8_'],['','P','T']]]);
ASPx.AddDisabledItems('mnuHeaderMenu',[[['dxm-disabled'],[''],['DXI0_','DXI4_','DXI5_','DXI6_','DXI6i0_','DXI6i1_','DXI6i2_','DXI6i3_','DXI6i4_','DXI6i5_','DXI6i7_','DXI7_','DXI8_','DXI8i0_','DXI8i1_','DXI8i2_','DXI8i3_','DXI9_','DXI10_','DXI10i0_','DXI10i1_','DXI10i3_','DXI10i4_','DXI10i5_','DXI10i6_','DXI10i7_','DXI10i8_','DXI11_'],['','P','T']],[['dxm-disabled'],[''],['DXI0i0_','DXI0i1_','DXI0i2_','DXI0i3_','DXI0i4_','DXI4i0_','DXI4i1_','DXI4i3_','DXI4i4_','DXI4i6_','DXI5i4_','DXI5i6_','DXI6i7i2_','DXI7i0_','DXI7i1_','DXI7i3_','DXI7i4_','DXI7i5_','DXI7i6_','DXI8i2i0_','DXI8i2i1_','DXI8i2i8_','DXI8i2i9_','DXI8i2i10_','DXI9i1_','DXI9i2_','DXI9i4_','DXI9i8_','DXI9i10_','DXI9i11_','DXI9i12_','DXI9i13_','DXI9i14_','DXI9i15_','DXI9i17_','DXI9i18_','DXI10i0i1_','DXI10i0i3_','DXI10i0i4_','DXI10i0i7_','DXI10i0i8_','DXI10i1i1_','DXI10i1i3_','DXI10i1i4_','DXI10i3i1_','DXI10i3i2_','DXI10i3i3_','DXI10i3i4_','DXI10i3i5_','DXI10i3i7_','DXI10i3i8_','DXI10i4i1_','DXI10i5i0_','DXI10i5i1_','DXI10i6i0_','DXI10i6i3_','DXI10i6i4_','DXI10i6i5_','DXI10i6i6_','DXI10i6i7_','DXI10i7i0_','DXI10i7i2_','DXI10i7i3_','DXI10i8i1_','DXI10i8i2_','DXI11i0_','DXI11i2_','DXI11i4_','DXI11i5_','DXI11i7_','DXI11i8_','DXI11i9_','DXI11i10_','DXI11i11_','DXI11i13_','DXI11i14_','DXI11i15_','DXI11i16_'],['','T']]]);
ASPx.createControl(ASPxClientMenu,'mnuHeaderMenu','headerMenu',{'uniqueID':'ctl00$mnuHeaderMenu','renderData':{'':[[0],[4],[5],[6],[7],[8],[9],[10],[11]],'0':[[0],[1],[2],[3],[4]],'4':[[0],[1],[3],[4],[6]],'5':[[4],[6]],'6':[[0],[1],[2],[3],[4],[5],[7]],'6i7':[[2]],'7':[[0],[1],[3],[4],[5],[6]],'8':[[0],[1],[2],[3]],'8i2':[[0],[1],[8],[9],[10]],'9':[[1],[2],[4],[8],[10],[11],[12],[13],[14],[15],[17],[18]],'10':[[0],[1],[3],[4],[5],[6],[7],[8]],'10i0':[[1],[3],[4],[7],[8]],'10i1':[[1],[3],[4]],'10i3':[[1],[2],[3],[4],[5],[7],[8]],'10i4':[[1]],'10i5':[[0],[1]],'10i6':[[0],[3],[4],[5],[6],[7]],'10i7':[[0],[2],[3]],'10i8':[[1],[2]],'11':[[0],[2],[4],[5],[7],[8],[9],[10],[11],[13],[14],[15],[16]]},'subMenuFIXOffset':1,'subMenuFIYOffset':-2,'subMenuLIXOffset':1,'subMenuLIYOffset':-2,'subMenuXOffset':1,'subMenuYOffset':-2,'allowSelectItem':true,'selectedItemIndexPath':'','scrollInfo':['0','4','5','6','7','8','9','10','11']},null,null,{'items':[{'items':[{'name':'trCustomerLead'},{'name':'trServiceReminder2'},{'name':'trOpportunity'},{'name':'trServiceAppointment'},{'name':'trServiceType'}],'name':'mniCRM'},{'items':[{'name':'trCasingReceive','visible':false},{'name':'trFinishNote','visible':false},{'items':[{'name':'trBrand','visible':false},{'name':'trDesign','visible':false},{'name':'trSection','visible':false},{'name':'trFailReason','visible':false}],'name':'mniRetreadAdmin','visible':false}],'name':'mniRetread','visible':false},{'items':[{'name':'trClaim','visible':false},{'name':'trDeliveryClaim','visible':false},{'name':'trClaimNote','visible':false}],'name':'mniClaim','visible':false},{'items':[{'name':'trOrderAssignment','visible':false},{'name':'trTrip','visible':false},{'name':'trTripReimbursement','visible':false},{'name':'trTripDailySalesRpt','visible':false},{'name':'trSubconGrossProfitRpt','visible':false}],'name':'mniTransport','visible':false},{'items':[{'name':'trQuotation'},{'name':'trSalesOrder'},{'name':'trDeliveryOrder','visible':false},{'name':'trSalesInvoice'},{'name':'trSalesCash'},{'name':'trSalesDebitNote','visible':false},{'name':'trCustomerReturn'},{'name':'trDeliveryInvoice','visible':false},{'name':'trUnlockSalesOrder','visible':false},{'name':'trSalesDelete','visible':false}],'name':'mniSales'},{'items':[{'name':'trPurchaseRequisition','visible':false},{'name':'trPurchaseOrder','visible':false},{'name':'trGoodsReceive','visible':false},{'name':'trB2BConvertPurchase','visible':false},{'name':'trPurchase'},{'name':'trPurchaseDebitNote','visible':false},{'name':'trPurchaseReturn'},{'name':'trKIVProcess','visible':false}],'name':'mniPurchase'},{'items':[{'name':'trInventory'},{'name':'trTransferIn'},{'name':'trTransferOut'},{'name':'trStockAdjustment'},{'name':'trStockCount'},{'name':'trLocationAdjustment'},{'name':'trLocationBatch','visible':false},{'items':[{'name':'trStockOpeningBalance','visible':false},{'name':'trBatch','visible':false},{'name':'trLocation'},{'name':'trAccessCondition','visible':false}],'name':'mniStockAdmin'}],'name':'mniProcess'},{'items':[{'name':'trAccount'},{'name':'trInvoiceCostPrice'},{'name':'trPaymentUnposted','visible':false},{'name':'trPayment'},{'name':'trPaymentIssue'},{'name':'trPaymentContra'},{'name':'trJournalEntry'},{'name':'trBankReconcile','visible':false},{'name':'trInventoryValue','visible':false},{'name':'trTaxAccrued','visible':false},{'name':'trSQLAccountingExport','visible':false},{'name':'trSQLAccountingImport','visible':false},{'items':[{'name':'trAccountGroup','visible':false},{'name':'trOpeningBalance','visible':false},{'name':'trBankAccount','visible':false},{'name':'trStockRecalculateCosting','visible':false},{'name':'trPaymentType','visible':false}],'name':'mniFinanceAdmin','visible':false}],'name':'mniFinance'},{'items':[{'name':'trOutstandingSalary'},{'name':'trSalary'},{'items':[{'name':'trAllowance'},{'name':'trDeduction'},{'name':'trContribution','visible':false},{'name':'trSDL','visible':false},{'name':'trCDAC','visible':false},{'name':'trMBMF','visible':false},{'name':'trSINDA','visible':false},{'name':'trECF','visible':false},{'name':'trSocso'},{'name':'trEIS'},{'name':'trPCB'}],'name':'mniPayrollAdmin'},{'name':'trSalaryRpt'},{'name':'trDepartmentSalaryRpt','visible':false},{'name':'trYearEndedSalaryRpt','visible':false}],'name':'mniPayroll'},{'items':[{'name':'trCasingViewing','visible':false},{'name':'trQuotationDetail'},{'name':'trOrderDetail'},{'name':'trDODetail','visible':false},{'name':'trSalesDetail'},{'name':'trDIDetail','visible':false},{'name':'trPurchaseRequisitionDetail','visible':false},{'name':'trPurchaseOrderDetail','visible':false},{'name':'trPurchaseDetail'},{'name':'trGRDetail','visible':false},{'name':'trStockViewing'},{'name':'trTransferViewing'},{'name':'trLocationTransferDetail'},{'name':'trReceivePaymentViewing'},{'name':'trIssuePaymentViewing'},{'name':'trJournalEntryDetail'},{'name':'trGSTDetail','visible':false},{'name':'trSalesLog'},{'name':'trUserAccessLog'},{'name':'trSMSLog','visible':false}],'name':'mniViewing'},{'items':[{'items':[{'name':'trSalesSummaryRpt','visible':false},{'name':'trSalesDetailRpt'},{'name':'trHourlySalesRpt','visible':false},{'name':'trMonthlySalesRpt'},{'name':'trYearlySalesRpt'},{'name':'trDOOutstandingRpt','visible':false},{'name':'trCustomerReturnSummaryRpt','visible':false},{'name':'trCustomerReturnDetailRpt'},{'name':'trItemSalesRpt'},{'name':'trVarianceDeliveryTimeRpt','visible':false},{'name':'trSalesDetailPriceVarianceBSRpt','visible':false}],'name':'mniSalesReport'},{'items':[{'name':'trPurchaseSummaryRpt','visible':false},{'name':'trPurchaseDetailRpt'},{'name':'trPurchaseReturnSummaryRpt','visible':false},{'name':'trPurchaseReturnDetailRpt'},{'name':'trItemPurchaseRpt'},{'name':'trGRDetailRpt','visible':false},{'name':'trPOGRSummaryRpt','visible':false}],'name':'mniPurchaseReport'},{'name':'trGSTSummaryRpt','visible':false},{'items':[{'name':'trStockTransferSummary','visible':false},{'name':'trStockTransferDetail'},{'name':'trStockBalance'},{'name':'trStockAgingRpt'},{'name':'trProductRpt'},{'name':'trStockNoMovementRpt'},{'name':'trStockPerformanceRpt','visible':false},{'name':'trStockLedgerRpt'},{'name':'trLocationRpt'},{'name':'trStockAnalysisRpt','visible':false},{'name':'trStockReconcileRpt','visible':false}],'name':'mniStockReport'},{'items':[{'name':'trSalesmanPerformanceSummaryRpt','visible':false},{'name':'trSalesmanPerformanceDetailRpt'},{'name':'trSalesmanByCollectionRpt','visible':false},{'name':'trSalesmanCommisionDailyRpt','visible':false},{'name':'trSalesmanCommisionByCollectionRpt','visible':false},{'name':'trSalesmanCommisionByCollectionMonthRpt','visible':false}],'name':'mniSalesmanReport'},{'items':[{'name':'trPaymentRpt'},{'name':'trPaymentMediaRpt'},{'name':'trPaymentMediaMonthlyRpt','visible':false}],'name':'mniPaymentReport'},{'items':[{'name':'trCustomerOutstandingRpt'},{'name':'trCustomerAgingSummaryRpt','visible':false},{'name':'trCustomerAgingSummary6MonthRpt','visible':false},{'name':'trCustomerAgingDetailRpt'},{'name':'trCustomerLedgerRpt'},{'name':'trCustomerStatementRpt'},{'name':'trCustomerPerformanceRpt'},{'name':'trCustomerItemPerformanceRpt'}],'name':'mniCustomerReport'},{'items':[{'name':'trSupplierOutstandingRpt'},{'name':'trSupplierAgingSummaryRpt','visible':false},{'name':'trSupplierAgingDetailRpt'},{'name':'trSupplierLedgerRpt'}],'name':'mniSupplierReport'},{'items':[{'name':'trJournalLedgerRpt','visible':false},{'name':'trGrossProfitRpt'},{'name':'trProfileLoss'},{'name':'trTrialBalance','visible':false},{'name':'trBalanceSheet','visible':false}],'name':'mniFinanceReport'},{'items':[{'name':'trSalesSummaryGroupRpt','visible':false},{'name':'trItemSalesGroupRpt','visible':false},{'name':'trPurchaseSummaryGroupRpt','visible':false},{'name':'trItemPurchaseGroupRpt','visible':false},{'name':'trSalesViewingGroup','visible':false},{'name':'trStockViewingGroup','visible':false},{'name':'trStockBalanceGroupRpt','visible':false},{'name':'trGrossProfitSummaryGroupRpt','visible':false}],'name':'mniGroupReport','visible':false}],'name':'mniReport'},{'items':[{'name':'trSystem'},{'name':'trCompany','visible':false},{'name':'trBranch'},{'name':'trCurrency','visible':false},{'name':'trTax'},{'name':'trEmployee'},{'name':'trUser','visible':false},{'name':'trCustomer'},{'name':'trCustomerPriceList'},{'name':'trSupplier'},{'name':'trVehicle'},{'name':'trVehicleChecklist'},{'name':'trArea','visible':false},{'name':'trCaption'},{'name':'trConfig'},{'name':'trDatabase'},{'name':'trChangeCode'},{'name':'trSMSTemplate','visible':false},{'name':'trPrintOption','visible':false}],'name':'mniAdmin'}]});

//-->
</script>
                                </td>
                            </tr>
                        </table>
                    </div>
                    
                    <div class="container-fluid flex-grow-1 container-p-y-hsdummy" style="background-color: #e5e5e5; min-height: 700px; padding: 5px;">
                        <br />
                        
    

    <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$MainContent$ScriptManager1', 'frmMasterPage', ['tctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$ctl22','MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_ctl22','tctl00$MainContent$UpdatePanel4','MainContent_UpdatePanel4','tctl00$MainContent$UpdatePanel12222','MainContent_UpdatePanel12222','tctl00$MainContent$UpdatePanel5','MainContent_UpdatePanel5'], [], [], 90, 'ctl00');
//]]>
</script>


    <div class="row">
        <div class="col-12 col-sm-4 col-md-4 col-lg-4 col-xl-4">
            <div class="page-title">
                <span id="MainContent_lblHeader">Jualan Invois</span>
                -
                  <span id="MainContent_lblMode">Tambah</span>
            </div>
        </div>
        <div class="ml-auto col-12 col-sm-4 col-md-4 col-lg-4 col-xl-4">
            <select name="ctl00$MainContent$ddlBranch" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$ddlBranch\&#39;,\&#39;\&#39;)&#39;, 0)" id="MainContent_ddlBranch" disabled="disabled" class="aspNetDisabled form-control" style="z-index: 0">
	<option selected="selected" value="1">RNR BARAKAH</option>

</select>
        </div>
    </div>

    

    <div class="card">
        <div class="card-body">
            <div class="row align-items-center">
                
            </div>
            <div class="row align-items-left">
                <div class="col-12 col-sm-12 col-md-12 col-lg-10 col-xl-10">
                    <!-- Customer  -->
                    <div id="MainContent_tdCustomerLookup" class="row">
                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                            <div class="form-label">
                                <a onclick="lnkNewCustomer_Click(); return false;" id="MainContent_lnkNewCustomer" href="javascript:__doPostBack(&#39;ctl00$MainContent$lnkNewCustomer&#39;,&#39;&#39;)" style="text-decoration:underline;">Pelanggan baru</a>
                            </div>
                            <div class="row">
                                <div class="col-8">
                                    
                                    <input name="ctl00$MainContent$txtCustomerCode" type="text" value="JTS7765" id="MainContent_txtCustomerCode" class="form-control" autocomplete="off" onkeydown="if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {__doPostBack(&#39;ctl00$MainContent$btnLookupCustomer&#39;,&#39;&#39;);return false;}} else {return true}; " />
                                </div>
                                <div class="col-4">
                                    
                                    <input type="submit" name="ctl00$MainContent$btnLookupCustomer" value="Lihat" id="MainContent_btnLookupCustomer" class="btn btn-dark" />
                                    &nbsp;
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                            
                            <span id="MainContent_lblCaptionCustomer" class="form-label">Pelanggan</span>
                            
                            <select name="ctl00$MainContent$ddlCustomer" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$ddlCustomer\&#39;,\&#39;\&#39;)&#39;, 0)" id="MainContent_ddlCustomer" disabled="disabled" class="aspNetDisabled form-control" style="background-color:#FDFFBA;">
	<option value="-1"></option>
	<option selected="selected" value="7">JTS7765 - ASYIQ DANIAL</option>

</select>
                        </div>


                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                            <span id="MainContent_lblCaptionHeaderSalesman" class="form-label">Ejen</span>
                            <script id="dxss_1108251304" type="text/javascript">
<!--
(function(){
var a = {'longDate':'dddd, d MMMM, yyyy','shortDate':'MM/dd/yyyy','currency':'RM','numNegInf':'-?','yearMonth':'MMMM, yyyy','currNegPattern':1,'monthDay':'d MMMM','twoDigitYearMax':2049,'percentPattern':1,'numPosInf':'?'};
for(var b in a) ASPx.CultureInfo[b] = a[b];
})();


//-->
</script><table class="dxeButtonEditSys dxeButtonEdit_Moderno form-control" id="MainContent_ddlSalesman" style="height:35px;">
	<tr>
		<td style="display:none;"><input id="MainContent_ddlSalesman_VI" name="MainContent_ddlSalesman_VI" type="hidden" value="-1" /></td><td class="dxic" style="width:100%;"><input class="dxeEditArea_Moderno dxeEditAreaSys" id="MainContent_ddlSalesman_I" name="ctl00$MainContent$ddlSalesman" onfocus="ASPx.EGotFocus(&#39;MainContent_ddlSalesman&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_ddlSalesman&#39;)" onchange="ASPx.ETextChanged(&#39;MainContent_ddlSalesman&#39;)" type="text" /></td><td id="MainContent_ddlSalesman_B-1" class="dxeButton dxeButtonEditButton_Moderno" style="-webkit-user-select:none;"><img id="MainContent_ddlSalesman_B-1Img" class="dxEditors_edtDropDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" /></td>
	</tr>
</table><div id="MainContent_ddlSalesman_DDD_PW-1" class="dxpcDropDown_Moderno dxpclW dxpc-ddSys dxdd-root" style="z-index:10000;display:none;visibility:hidden;">
	<div class="dxpc-mainDiv dxdd-list dxpc-shadow">
		<div class="dxpc-contentWrapper">
			<div class="dxpc-content">
				<table class="dxeListBox_Moderno" id="MainContent_ddlSalesman_DDD_L" style="border-collapse:separate;">
					<tr>
						<td style="vertical-align:Top;"><div id="MainContent_ddlSalesman_DDD_L_H" class="dxeHD">
							<table style="width:100%;border-collapse:separate;table-layout:fixed!important;">
								<tr>
									<td class="dxeListBoxItem_Moderno dxeHFC dxeHLC" style="width:120px;">Salesman</td>
								</tr>
							</table>
						</div><div id="MainContent_ddlSalesman_DDD_L_D" class="dxlbd" style="overflow:auto;">
							<input id="MainContent_ddlSalesman_DDD_L_VI" type="hidden" name="ctl00$MainContent$ddlSalesman$DDD$L" /><table style="border-collapse:separate;visibility:hidden!important;display:none!important;">
								<tr id="MainContent_ddlSalesman_DDD_L_LBI-1" class="dxeListBoxItemRow_Moderno">
									<td id="MainContent_ddlSalesman_DDD_L_LBII" class="dxeListBoxItem_Moderno dxeLTM dxeFTM" style="width:120px;">&nbsp;</td>
								</tr>
							</table><table id="MainContent_ddlSalesman_DDD_L_LBT" style="width:100%;border-collapse:separate;table-layout:fixed!important;">

							</table>
						</div></td>
					</tr>
				</table><script id="dxss_2060958283" type="text/javascript">
<!--
ASPx.createControl(ASPxClientListBox,'MainContent_ddlSalesman_DDD_L','',{'uniqueID':'ctl00$MainContent$ddlSalesman$DDD$L','scStates':6,'scPostfix':'Moderno','savedSelectedIndex':0,'isSyncEnabled':false,'isComboBoxList':true,'hasSampleItem':true,'columnFieldNames':['Employee_Name'],'textFormatString':'{0}','hoverClasses':['dxeListBoxItemHover_Moderno'],'selectedClasses':['dxeListBoxItemSelected_Moderno'],'disabledClasses':['dxeDisabled_Moderno'],'itemsInfo':[{'value':-1,'texts':['']},{'value':5,'texts':['BAKHT MUNEER']},{'value':3,'texts':['kyaw zay yar']},{'value':4,'texts':['MOHD FAIZUL FAZLAN BIN DARONI']},{'value':2,'texts':['muhammad azizan bin anuar']},{'value':1,'texts':['paiman ismail']},{'value':6,'texts':['ROSSLINA BINTI MAHMOOD']}]},{'SelectedIndexChanged':function (s, e) { ASPx.CBLBSelectedIndexChanged('MainContent_ddlSalesman', e); },'ItemClick':function (s, e) { ASPx.CBLBItemMouseUp('MainContent_ddlSalesman', e); }},null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}]});

//-->
</script>
			</div>
		</div>
	</div>
</div><script id="dxss_660634542" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_ddlSalesman_DDD',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_ddlSalesman_DDD','',{'uniqueID':'ctl00$MainContent$ddlSalesman$DDD','adjustInnerControlsSizeOnShow':false,'popupAnimationType':'slide','closeAction':'CloseButton','popupHorizontalAlign':'LeftSides','popupVerticalAlign':'Below'},{'Shown':function (s, e) { ASPx.DDBPCShown('MainContent_ddlSalesman', e); }});

//-->
</script><script id="dxss_537205910" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_ddlSalesman',[[['dxeButtonEditButtonHover_Moderno'],[''],['B-1']]]);
ASPx.RemoveHoverItems('MainContent_ddlSalesman',[[['B-100']]]);
ASPx.AddPressedItems('MainContent_ddlSalesman',[[['dxeButtonEditButtonPressed_Moderno'],[''],['B-1']]]);
ASPx.RemovePressedItems('MainContent_ddlSalesman',[[['B-100']]]);
ASPx.createControl(ASPxClientComboBox,'MainContent_ddlSalesman','',{'uniqueID':'ctl00$MainContent$ddlSalesman','autoCompleteAttribute':{'name':'autocomplete','value':'off'},'ddmInput':true,'lastSuccessValue':-1,'islastSuccessValueInit':true},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}]});

//-->
</script>
                        </div>

                        <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                        </div>
                        <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                            <span id="MainContent_lblLookupCustomerMsg" class="form-label" style="color:Red;"></span>
                        </div>

                        <!--  Gridview Customer  -->
                        <table class="table-responsive">
                            <tr id="MainContent_trCustomerLookup">
	<td></td>
	<td style="vertical-align: top;">
                                    
                                </td>
	<td colspan="2" style="vertical-align: top;">
                                    
                                </td>
</tr>

                        </table>
                    </div>

                    <div id="MainContent_divHeader">
                        <!-- Vehicle Info -->
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <div class="form-label">
                                    
                                    
<script type="text/javascript">
    function ShowLoginWindow1() {
        pcLogin1.Show();
    }
</script>
<style type="text/css">
    .CusrsorColor:hover {
        color: #007bff;
    }

    .test {
        cursor: pointer;
        color: #165F62;
    }

        .test:hover {
            color: #28B4B9;
        }
</style>
<div>
    <a class="form-label" onclick="ShowLoginWindow1()" title="New Vehicle">
        
        <span class="dxeBase_Moderno form-label test" id="MainContent_usrVehicleControl_lblCaptionNewVehicle" style="text-decoration:underline;">Baru Vehicle</span>
    </a>
    
    <div id="MainContent_usrVehicleControl_pcLogin1_PW-1" class="dxpcLite_Moderno dxpclW" style="width:700px;z-index:10000;display:none;visibility:hidden;">
	<div class="dxpc-mainDiv dxpc-shadow">
		<div class="dxpc-header drag dxpc-withBtn" style="-webkit-user-select:none;">
			<div class="dxpc-closeBtn">
				<img class="dxWeb_pcCloseButton_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="Close" />
			</div><div class="dxpc-headerContent">
				<span class="dxpc-headerText dx-vam">Baru Vehicle</span>
			</div><b class="dx-clear"></b>
		</div><div class="dxpc-contentWrapper">
			<div class="dxpc-content">
				
                <div class="dxpnlControl_Moderno" id="MainContent_usrVehicleControl_pcLogin1_Panel1" onkeypress="return ASPx.FireDefaultButton(event, &#39;btOK&#39;);">
					
                            <div class="dxflFormLayout_Moderno" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid" style="height:100%;width:100%;">
						<table class="dxflGroup_Moderno dxflGroupSys dxflAGSys" style="border-collapse:separate;">
							<tr>
								<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_0" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                <div class="col-12 col-md-4">
                                                    <span class="dxeBase_Moderno form-label" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_lblCaptionVehicleNo">Vehicle</span>
                                                </div>
                                                <div class="col-12 col-md-8">
                                                    <input class="dxeTextBoxSys form-control text uppercase dxeTextBoxDefaultWidthSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtNewVehicleNo" type="text" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtNewVehicleNo" style="background-color:#FDFFBA;" /><script id="dxss_638882441" type="text/javascript">
<!--
ASPx.createControl(ASPxClientTextBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtNewVehicleNo','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtNewVehicleNo','isNative':true},null,null,{'decorationStyles':[]});

//-->
</script>
                                                </div>
                                            
								</div></td>
							</tr><tr>
								<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_1" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                <div class="col-12 col-md-4">
                                                    <span class="dxeBase_Moderno form-label" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_lblCaptionModel">Model</span>
                                                </div>
                                                <div class="col-12 col-md-8">

                                                    <div id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_ctl22">
										
                                                            
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <table class="dxeButtonEditSys dxeButtonEdit_MaterialCompact form-control" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand" style="height:40px;">
											<tr>
												<td style="display:none;"><input id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_VI" name="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_VI" type="hidden" /></td><td class="dxeIIC" style="padding-left:0px;padding-top:0px;padding-bottom:0px;display:none;vertical-align:middle;"><img src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="height:30px;width:50px;" /></td><td class="dxic" style="width:100%;"><input class="dxeEditArea_MaterialCompact dxeEditAreaSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_I" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleBrand" onfocus="ASPx.EGotFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand&#39;)" onchange="ASPx.ETextChanged(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand&#39;)" value="Choose Brand" type="text" /></td><td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_B-1" class="dxeButton dxeButtonEditButton_MaterialCompact" style="-webkit-user-select:none;"><img id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_B-1Img" class="dxEditors_edtDropDown_MaterialCompact" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" /></td>
											</tr>
										</table><div id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_PW-1" class="dxpcDropDown_MaterialCompact dxpclW dxpc-ddSys dxdd-root" style="z-index:10000;display:none;visibility:hidden;">
											<div class="dxpc-mainDiv dxdd-list dxpc-shadow">
												<div class="dxpc-contentWrapper">
													<div class="dxpc-content">
														<table class="dxeListBox_MaterialCompact" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_L" style="border-collapse:separate;">
															<tr>
																<td style="vertical-align:Top;"><div id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_L_D" class="dxlbd" style="width:100%;overflow:auto;">
																	<input id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_L_VI" type="hidden" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleBrand$DDD$L" /><table style="border-collapse:separate;visibility:hidden!important;display:none!important;">
																		<tr id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_L_LBI-1" class="dxeListBoxItemRow_MaterialCompact">
																			<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_L_LBII" class="dxeListBoxItem_MaterialCompact dxeI" style="width:50px;padding-right:4px!important;"><img src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="height:30px;width:50px;" /></td><td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_L_LBIT" class="dxeListBoxItem_MaterialCompact dxeT">&nbsp;</td>
																		</tr>
																	</table><table id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_L_LBT" style="width:100%;border-collapse:separate;">

																	</table>
																</div></td>
															</tr>
														</table><script id="dxss_2128789624" type="text/javascript">
<!--
ASPx.createControl(ASPxClientListBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD_L','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleBrand$DDD$L','scStates':6,'scPostfix':'MaterialCompact','isSyncEnabled':false,'isComboBoxList':true,'imageCellExists':true,'hasSampleItem':true,'hoverClasses':['dxeListBoxItemHover_MaterialCompact'],'selectedClasses':['dxeListBoxItemSelected_MaterialCompact'],'disabledClasses':['dxeDisabled_MaterialCompact'],'itemsInfo':[{'value':'-1','text':'Choose Brand','imageUrl':''},{'value':'Alfa Romeo','text':'Alfa Romeo','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Alfa_Romeo.png'},{'value':'Aston Martin','text':'Aston Martin','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Aston_Martin.png'},{'value':'Audi','text':'Audi','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Audi.png'},{'value':'Bentley','text':'Bentley','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Bentley.png'},{'value':'BMW','text':'BMW','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//BMW.png'},{'value':'Borgward','text':'Borgward','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Borgward.png'},{'value':'Bufori','text':'Bufori','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Bufori.png'},{'value':'Caterham','text':'Caterham','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Caterham.png'},{'value':'Chana','text':'Chana','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Chana.png'},{'value':'Chery','text':'Chery','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Chery.png'},{'value':'Chevrolet','text':'Chevrolet','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Chevrolet.png'},{'value':'Citroen','text':'Citroen','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Citroen.png'},{'value':'Ferrari','text':'Ferrari','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Ferrari.png'},{'value':'Fiat','text':'Fiat','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Fiat.png'},{'value':'Ford','text':'Ford','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Ford.png'},{'value':'Haval','text':'Haval','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Haval.png'},{'value':'Honda','text':'Honda','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Honda.png'},{'value':'Hyundai','text':'Hyundai','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Hyundai.png'},{'value':'Infiniti','text':'Infiniti','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Infiniti.png'},{'value':'Isuzu','text':'Isuzu','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Isuzu.png'},{'value':'Jaguar','text':'Jaguar','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Jaguar.png'},{'value':'Jeep','text':'Jeep','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Jeep.png'},{'value':'JMC','text':'JMC','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//JMC.png'},{'value':'Kia','text':'Kia','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Kia.png'},{'value':'Lamborghini','text':'Lamborghini','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Lamborghini.png'},{'value':'Land Rover','text':'Land Rover','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Land_Rover.png'},{'value':'Lexus','text':'Lexus','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Lexus.png'},{'value':'Lotus','text':'Lotus','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Lotus.png'},{'value':'Mahindra','text':'Mahindra','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Mahindra.png'},{'value':'Maserati','text':'Maserati','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Maserati.png'},{'value':'Maxus','text':'Maxus','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Maxus.png'},{'value':'Mazda','text':'Mazda','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Mazda.png'},{'value':'McLaren','text':'McLaren','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//McLaren.png'},{'value':'Mercedes-Benz','text':'Mercedes-Benz','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Mercedes-Benz.png'},{'value':'MINI','text':'MINI','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//MINI.png'},{'value':'Mitsubishi','text':'Mitsubishi','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Mitsubishi.png'},{'value':'Nissan','text':'Nissan','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Nissan.png'},{'value':'Perodua','text':'Perodua','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Perodua.png'},{'value':'Peugeot','text':'Peugeot','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Peugeot.png'},{'value':'Porsche','text':'Porsche','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Porsche.png'},{'value':'Proton','text':'Proton','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Proton.png'},{'value':'Renault','text':'Renault','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Renault.png'},{'value':'Rolls-Royce','text':'Rolls-Royce','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Rolis_Royce.png'},{'value':'Skoda','text':'Skoda','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Skoda.png'},{'value':'SsangYong','text':'SsangYong','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//SsangYong.png'},{'value':'Subaru','text':'Subaru','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Subaru.png'},{'value':'Suzuki','text':'Suzuki','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Suzuki.png'},{'value':'Tata','text':'Tata','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Tata.png'},{'value':'Toyota','text':'Toyota','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Toyota.png'},{'value':'Volkswagen','text':'Volkswagen','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Volkswagen.png'},{'value':'Volvo','text':'Volvo','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Volvo.png'},{'value':'Daihatsu','text':'Daihatsu','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Daihatsu.png'},{'value':'Naza','text':'Naza','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//naza.png'},{'value':'PoleStar','text':'PoleStar','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//'},{'value':'ORA','text':'ORA','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_ORA.png'},{'value':'TESLA','text':'TESLA','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_TESLA.png'},{'value':'NETA','text':'NETA','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_NETA.png'},{'value':'Opel','text':'Opel','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_Opel.jpg'},{'value':'MG','text':'MG','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_MG.png'},{'value':'BYD','text':'BYD','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_BYD.png'},{'value':'DFSK','text':'DFSK','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_DFSK.png'},{'value':'Hino','text':'Hino','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//'},{'value':'Hicom','text':'Hicom','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//'},{'value':'Smart','text':'Smart','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_Smart.png'},{'value':'Range Rover','text':'Range Rover','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//Image_RangeRover.png'},{'value':'Jaecoo','text':'Jaecoo','imageUrl':'https://webmax.com.my/CMP///Images//VehicleBrandLogo//'}]},{'SelectedIndexChanged':function (s, e) { ASPx.CBLBSelectedIndexChanged('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand', e); },'ItemClick':function (s, e) { ASPx.CBLBItemMouseUp('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand', e); }},null,{'decorationStyles':[{'key':'F','className':'dxeFocused_MaterialCompact','cssText':''}]});

//-->
</script>
													</div>
												</div>
											</div>
										</div><script id="dxss_1734716686" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand_DDD','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleBrand$DDD','adjustInnerControlsSizeOnShow':false,'popupAnimationType':'slide','closeAction':'CloseButton','popupHorizontalAlign':'LeftSides','popupVerticalAlign':'Below'},{'Shown':function (s, e) { ASPx.DDBPCShown('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand', e); }});

//-->
</script><script id="dxss_1752577564" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand',[[['dxeButtonEditButtonHover_MaterialCompact'],[''],['B-1']]]);
ASPx.RemoveHoverItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand',[[['B-100']]]);
ASPx.AddPressedItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand',[[['dxeButtonEditButtonPressed_MaterialCompact'],[''],['B-1']]]);
ASPx.RemovePressedItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand',[[['B-100']]]);
ASPx.AddDisabledItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand',[[['dxeDisabled_MaterialCompact'],[''],['','I']],[['dxeDisabled_MaterialCompact dxeButtonDisabled_MaterialCompact'],[''],['B-1'],,[[{'spriteCssClass':'dxEditors_edtDropDownDisabled_MaterialCompact'}]],['Img']]]);
ASPx.RemoveDisabledItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand',[[['B-100'],]]);
ASPx.createControl(ASPxClientComboBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleBrand','',{'autoPostBack':true,'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleBrand','scStates':2,'scPostfix':'MaterialCompact','stateObject':{'rawValue':''},'nullText':'Choose Brand','autoCompleteAttribute':{'name':'autocomplete','value':'off'},'ddmInput':true,'lastSuccessValue':null,'islastSuccessValueInit':true},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_MaterialCompact','cssText':''},{'key':'N','className':'dxeNullText_MaterialCompact','cssText':''}]});

//-->
</script>
                                                                        
                                                                    </td>
                                                                    <td>
                                                                        <table class="dxeButtonEditSys dxeButtonEdit_MaterialCompact form-control" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel" style="height:40px;">
											<tr>
												<td style="display:none;"><input id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_VI" name="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_VI" type="hidden" /></td><td class="dxic" style="width:100%;"><input class="dxeEditArea_MaterialCompact dxeEditAreaSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_I" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleModel" onfocus="ASPx.EGotFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel&#39;)" onchange="ASPx.ETextChanged(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel&#39;)" value="Choose Model" type="text" /></td><td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_B-1" class="dxeButton dxeButtonEditButton_MaterialCompact" style="-webkit-user-select:none;"><img id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_B-1Img" class="dxEditors_edtDropDown_MaterialCompact" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" /></td>
											</tr>
										</table><div id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD_PW-1" class="dxpcDropDown_MaterialCompact dxpclW dxpc-ddSys dxdd-root" style="z-index:10000;display:none;visibility:hidden;">
											<div class="dxpc-mainDiv dxdd-list dxpc-shadow">
												<div class="dxpc-contentWrapper">
													<div class="dxpc-content">
														<table class="dxeListBox_MaterialCompact" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD_L" style="border-collapse:separate;">
															<tr>
																<td style="vertical-align:Top;"><div id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD_L_D" class="dxlbd" style="width:100%;overflow:auto;">
																	<input id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD_L_VI" type="hidden" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleModel$DDD$L" /><table style="border-collapse:separate;visibility:hidden!important;display:none!important;">
																		<tr id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD_L_LBI-1" class="dxeListBoxItemRow_MaterialCompact">
																			<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD_L_LBII" class="dxeListBoxItem_MaterialCompact">&nbsp;</td>
																		</tr>
																	</table><table id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD_L_LBT" style="width:100%;border-collapse:separate;">
																		<tr>
																			<td></td>
																		</tr>
																	</table>
																</div></td>
															</tr>
														</table><script id="dxss_1080713228" type="text/javascript">
<!--
ASPx.createControl(ASPxClientListBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD_L','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleModel$DDD$L','scStates':6,'scPostfix':'MaterialCompact','isSyncEnabled':false,'isComboBoxList':true,'hasSampleItem':true,'isHasFakeRow':true,'hoverClasses':['dxeListBoxItemHover_MaterialCompact'],'selectedClasses':['dxeListBoxItemSelected_MaterialCompact'],'disabledClasses':['dxeDisabled_MaterialCompact'],'itemsInfo':[]},{'SelectedIndexChanged':function (s, e) { ASPx.CBLBSelectedIndexChanged('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel', e); },'ItemClick':function (s, e) { ASPx.CBLBItemMouseUp('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel', e); }},null,{'decorationStyles':[{'key':'F','className':'dxeFocused_MaterialCompact','cssText':''}]});

//-->
</script>
													</div>
												</div>
											</div>
										</div><script id="dxss_1292604798" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel_DDD','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleModel$DDD','adjustInnerControlsSizeOnShow':false,'popupAnimationType':'slide','closeAction':'CloseButton','popupHorizontalAlign':'LeftSides','popupVerticalAlign':'Below'},{'Shown':function (s, e) { ASPx.DDBPCShown('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel', e); }});

//-->
</script><script id="dxss_71948306" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel',[[['dxeButtonEditButtonHover_MaterialCompact'],[''],['B-1']]]);
ASPx.RemoveHoverItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel',[[['B-100']]]);
ASPx.AddPressedItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel',[[['dxeButtonEditButtonPressed_MaterialCompact'],[''],['B-1']]]);
ASPx.RemovePressedItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel',[[['B-100']]]);
ASPx.AddDisabledItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel',[[['dxeDisabled_MaterialCompact'],[''],['','I']],[['dxeDisabled_MaterialCompact dxeButtonDisabled_MaterialCompact'],[''],['B-1'],,[[{'spriteCssClass':'dxEditors_edtDropDownDisabled_MaterialCompact'}]],['Img']]]);
ASPx.RemoveDisabledItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel',[[['B-100'],]]);
ASPx.createControl(ASPxClientComboBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_CBVehicleModel','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$CBVehicleModel','scStates':2,'scPostfix':'MaterialCompact','stateObject':{'rawValue':''},'nullText':'Choose Model','autoCompleteAttribute':{'name':'autocomplete','value':'off'},'ddmInput':true,'lastSuccessValue':null,'islastSuccessValueInit':true},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_MaterialCompact','cssText':''},{'key':'N','className':'dxeNullText_MaterialCompact','cssText':''}]});

//-->
</script>
                                                                        
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <input class="dxeTextBoxSys form-control dxeTextBoxDefaultWidthSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtModel" type="text" value="Model Variant or New Model" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtModel" onfocus="ASPx.EGotFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtModel&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtModel&#39;)" onchange="ASPx.EValueChanged(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtModel&#39;)" /><script id="dxss_309431467" type="text/javascript">
<!--
ASPx.createControl(ASPxClientTextBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtModel','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtModel','isNative':true,'stateObject':{'rawValue':''},'nullText':'Model Variant or New Model'},null,null,{'decorationStyles':[{'key':'N','className':'','cssText':'color:LightGrey;'}]});

//-->
</script>

                                                        
									</div>
                                                </div>
                                            
								</div></td>
							</tr><tr>
								<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_2" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                <div class="col-12 col-md-4">
                                                    <span class="dxeBase_Moderno form-label" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_lblCaptionContactPerson">Hubungi Orang</span>
                                                </div>
                                                <div class="col-12 col-md-8">
                                                    <input class="dxeTextBoxSys form-control dxeTextBoxDefaultWidthSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleContact" type="text" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtVehicleContact" /><script id="dxss_1601159011" type="text/javascript">
<!--
ASPx.createControl(ASPxClientTextBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleContact','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtVehicleContact','isNative':true},null,null,{'decorationStyles':[]});

//-->
</script>
                                                </div>
                                            
								</div></td>
							</tr><tr>
								<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_3" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                <div class="col-12 col-md-4">
                                                    <span class="dxeBase_Moderno form-label" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_lblCaptionContactNo">Nombor Telefon Bimbit</span>
                                                </div>
                                                <div class="col-12 col-md-8">
                                                    <input class="dxeTextBoxSys form-control dxeTextBoxDefaultWidthSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleContactNo" type="text" value="601234112244" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtVehicleContactNo" onfocus="ASPx.EGotFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleContactNo&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleContactNo&#39;)" onchange="ASPx.EValueChanged(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleContactNo&#39;)" /><script id="dxss_613493295" type="text/javascript">
<!--
ASPx.createControl(ASPxClientTextBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleContactNo','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtVehicleContactNo','isNative':true,'stateObject':{'rawValue':''},'nullText':'601234112244'},null,null,{'decorationStyles':[{'key':'N','className':'','cssText':'color:LightGrey;'}]});

//-->
</script>
                                                    
                                                    <span id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtMobileNoMsg" style="color:Red;"></span>
                                                </div>
                                            
								</div></td>
							</tr><tr>
								<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_4" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                <div class="col-12 col-md-4">
                                                    <span class="dxeBase_Moderno form-label" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_lblCaptionEmail">Alamat E-mel</span>
                                                </div>
                                                <div class="col-12 col-md-8">
                                                    <input class="dxeTextBoxSys form-control dxeTextBoxDefaultWidthSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleEmail" type="text" value="email@gmail.com" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtVehicleEmail" onfocus="ASPx.EGotFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleEmail&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleEmail&#39;)" onchange="ASPx.EValueChanged(&#39;MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleEmail&#39;)" /><script id="dxss_288851526" type="text/javascript">
<!--
ASPx.createControl(ASPxClientTextBox,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_txtVehicleEmail','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$txtVehicleEmail','isNative':true,'stateObject':{'rawValue':''},'nullText':'email@gmail.com'},null,null,{'decorationStyles':[{'key':'N','className':'','cssText':'color:LightGrey;'}]});

//-->
</script>
                                                    
                                                </div>
                                            
								</div></td>
							</tr><tr>
								<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_5" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflButtonItemSys dxflItem_Moderno" style="padding-top:19px;">
									
                                                <div class="col-12 col-md-4"></div>
                                                <div class="col-12 col-md-8">
                                                    <div class="dxbButton_Moderno dxbButtonSys dxbTSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnSave" style="width:80px;float:left;margin-right:8px;-webkit-user-select:none;">
										<div class="dxb">
											<div class="dxb-hbc">
												<input id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnSave_I" class="dxb-hb" value="Save" type="submit" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$btnSave" style="opacity:0.01;" />
											</div><span class="dx-vam">Save</span>
										</div>
									</div><script id="dxss_137143444" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnSave',[[['dxbButtonHover_Moderno'],[''],[''],['','TC']]]);
ASPx.AddPressedItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnSave',[[['dxbButtonPressed_Moderno'],[''],[''],['','TC']]]);
ASPx.AddDisabledItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnSave',[[['dxbDisabled_Moderno'],[''],[''],['','TC']]]);
ASPx.AddSelectedItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnSave',[[['dxbf'],[''],['CD']]]);
ASPx.createControl(ASPxClientButton,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnSave','',{'autoPostBack':true,'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$btnSave','serverEvents':['Click']});

//-->
</script>
                                                    <div class="dxbButton_Moderno dxbButtonSys dxbTSys" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnCancel" style="width:80px;float:left;margin-right:8px;-webkit-user-select:none;">
										<div class="dxb">
											<div class="dxb-hbc">
												<input id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnCancel_I" class="dxb-hb" value="Cancel" type="submit" name="ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$btnCancel" style="opacity:0.01;" />
											</div><span class="dx-vam">Cancel</span>
										</div>
									</div><script id="dxss_102309142" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnCancel',[[['dxbButtonHover_Moderno'],[''],[''],['','TC']]]);
ASPx.AddPressedItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnCancel',[[['dxbButtonPressed_Moderno'],[''],[''],['','TC']]]);
ASPx.AddDisabledItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnCancel',[[['dxbDisabled_Moderno'],[''],[''],['','TC']]]);
ASPx.AddSelectedItems('MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnCancel',[[['dxbf'],[''],['CD']]]);
ASPx.createControl(ASPxClientButton,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_btnCancel','',{'autoPostBack':true,'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid$btnCancel','serverEvents':['Click']});

//-->
</script>
                                                </div>
                                            
								</div></td>
							</tr><tr>
								<td id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_6" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                <div class="col-12">
                                                    <span class="dxeBase_Moderno" id="MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid_lblError" style="color:Red;"></span>
                                                </div>
                                            
								</div></td>
							</tr>
						</table>
					</div><script id="dxss_416612689" type="text/javascript">
<!--
ASPx.createControl(ASPxClientFormLayout,'MainContent_usrVehicleControl_pcLogin1_Panel1_ASPxFormLayoutMid','',{'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1$Panel1$ASPxFormLayoutMid'});

//-->
</script>
                        
				</div>
            
			</div>
		</div>
	</div>
</div><div id="MainContent_usrVehicleControl_pcLogin1_DXPWMB-1" class="dxpcModalBackLite_Moderno" style="z-index:9999;">

</div><table id="MainContent_usrVehicleControl_pcLogin1_LP" class="dxpcLoadingPanel_Moderno dxlpLoadingPanel_Moderno" style="left:0px;top:0px;z-index:30000;display:none;">
	<tr>
		<td class="dx" style="padding-right:0px;"><img class="dxlp-loadingImage dxlp-imgPosLeft" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="vertical-align:middle;" /></td><td class="dx" style="padding-left:0px;"><span id="MainContent_usrVehicleControl_pcLogin1_TL">Loading&hellip;</span></td>
	</tr>
</table><div id="MainContent_usrVehicleControl_pcLogin1_LD" class="dxpcLoadingDiv_Moderno dxlpLoadingDiv_Moderno dx-ft" style="left:0px;top:0px;z-index:29999;display:none;position:absolute;">

</div><script id="dxss_235227594" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_usrVehicleControl_pcLogin1',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_usrVehicleControl_pcLogin1','pcLogin1',{'callBack':function(arg) { WebForm_DoCallback('ctl00$MainContent$usrVehicleControl$pcLogin1',arg,ASPx.Callback,'MainContent_usrVehicleControl_pcLogin1',ASPx.CallbackError,true); },'uniqueID':'ctl00$MainContent$usrVehicleControl$pcLogin1','popupAnimationType':'fade','closeAnimationType':'fade','allowResize':true,'closeAction':'CloseButton','closeOnEscape':true,'popupHorizontalAlign':'WindowCenter','popupVerticalAlign':'WindowCenter','allowDragging':true,'modal':true,'width':700,'widthFromServer':true,'autoUpdatePosition':true});

//-->
</script>
</div>

                                </div>
                                <div class="row">
                                    <div class="col-8">
                                        
                                        <input name="ctl00$MainContent$txtLookupVehicle" type="text" id="MainContent_txtLookupVehicle" class="form-control text uppercase" onkeydown="if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {__doPostBack(&#39;ctl00$MainContent$btnLookupVehicle&#39;,&#39;&#39;);return false;}} else {return true}; " />
                                    </div>
                                    <div class="col-4">
                                        
                                        <input type="submit" name="ctl00$MainContent$btnLookupVehicle" value="Lihat" id="MainContent_btnLookupVehicle" class="btn btn-dark" />
                                        &nbsp;
                                    </div>
                                </div>
                                
                                

                            </div>

                            <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                <span id="MainContent_lblIndustrialPrefix" class="form-label">Vehicle</span>
                                <input name="ctl00$MainContent$txtVehicleDesc" type="text" id="MainContent_txtVehicleDesc" disabled="disabled" class="aspNetDisabled form-control" />
                                
                            </div>

                            <div class="col-12 col-sm-6 col-md-4 col-lg-3 col-xl-3">
                                <span id="MainContent_lblCaptionMileageRmdNote" class="form-label">Catatan Mileage / Peringatan</span>
                                <input name="ctl00$MainContent$txtMileageOrReminderNote" type="text" maxlength="30" id="MainContent_txtMileageOrReminderNote" class="form-control" />
                            </div>

                        </div>
                        
                        <!-- Delivery Address Part -->
                        <div id="MainContent_divAddress" class="row align-items-center">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <span id="MainContent_lblCaptionAddress1" class="form-label">Alamat 1</span>
                                <input name="ctl00$MainContent$txtAddress1" type="text" maxlength="80" id="MainContent_txtAddress1" class="form-control" />
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <span id="MainContent_lblCaptionAddress2" class="form-label">Alamat 2</span>
                                <input name="ctl00$MainContent$txtAddress2" type="text" maxlength="80" id="MainContent_txtAddress2" class="form-control" />
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <span id="MainContent_lblCaptionAddress3" class="form-label">Alamat 3</span>
                                <input name="ctl00$MainContent$txtAddress3" type="text" maxlength="80" id="MainContent_txtAddress3" class="form-control" />
                            </div>
                        </div>

                        <!-- Contact Info -->
                        <div class="row align-items-center">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <span id="MainContent_lblCaptionContactPerson" class="form-label">Hubungi Orang</span>
                                <img id="MainContent_Image1" src="../Images/info.png" style="height:18px;width:18px;text-align: right;" />
                                <div id="MainContent_pcMain_PW-1" class="dxpcLite_Moderno dxpclW" style="height:100px;width:500px;z-index:10000;display:none;visibility:hidden;">
	<div class="dxpc-mainDiv dxpc-shadow">
		<div class="dxpc-header dxpc-withBtn">
			<div class="dxpc-closeBtn">
				<img class="dxWeb_pcCloseButton_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="Close" />
			</div><div class="dxpc-headerContent">
				<span class="dxpc-headerText dx-vam">Customer Additional Contact Info</span>
			</div><b class="dx-clear"></b>
		</div><div class="dxpc-contentWrapper">
			<div class="dxpc-content">
				
                                            <div id="MainContent_pcMain_Panel1">
					
                                                <div>
                                                    <span id="lblNoteTel1" class="form-label">Telephone 1 : 01128817745 </span>
                                                </div>
                                                <div>
                                                    <span id="lblNoteTel2" class="form-label">Telephone 2 :  </span>
                                                </div>
                                                <div>
                                                    <span id="lblNoteTel3" class="form-label">Fax Number :  </span>
                                                </div>
                                            
				</div>
                                        
			</div>
		</div><div class="dxpc-footer">
			<div class="dxpc-footerContent">
				<span class="dxpc-footerText dx-vam"> </span>
			</div><b class="dx-clear"></b>
		</div>
	</div>
</div><table id="MainContent_pcMain_LP" class="dxpcLoadingPanel_Moderno dxlpLoadingPanel_Moderno" style="left:0px;top:0px;z-index:30000;display:none;">
	<tr>
		<td class="dx" style="padding-right:0px;"><img class="dxlp-loadingImage dxlp-imgPosLeft" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="vertical-align:middle;" /></td><td class="dx" style="padding-left:0px;"><span id="MainContent_pcMain_TL">Loading&hellip;</span></td>
	</tr>
</table><div id="MainContent_pcMain_LD" class="dxpcLoadingDiv_Moderno dxlpLoadingDiv_Moderno dx-ft" style="left:0px;top:0px;z-index:29999;display:none;position:absolute;">

</div><script id="dxss_157404791" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_pcMain',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_pcMain','ASPxPopupClientControl',{'callBack':function(arg) { WebForm_DoCallback('ctl00$MainContent$pcMain',arg,ASPx.Callback,'MainContent_pcMain',ASPx.CallbackError,true); },'uniqueID':'ctl00$MainContent$pcMain','popupAnimationType':'slide','popupAction':'MouseOver','closeAction':'MouseOut','popupHorizontalAlign':'LeftSides','popupVerticalAlign':'Below','width':500,'widthFromServer':true,'height':100,'defaultWindowPopupElementIDList':['MainContent_Image1']},{'PopUp':function(s, e) { SetImageState(true); },'CloseUp':function(s, e) { SetImageState(false); }});

//-->
</script>
                                <input name="ctl00$MainContent$txtContactPerson" type="text" value="ABANG" maxlength="80" id="MainContent_txtContactPerson" class="form-control" style="z-index: 0" />
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <div id="MainContent_UpdatePanel4">
	
                                        <span id="MainContent_lblCaptionContactNo" class="form-label">Nombor Telefon Bimbit</span>
                                        <table style="width: 100%;">
                                            <tr>
                                                <td style="width: 40%">
                                                    <table class="dxeButtonEditSys dxeButtonEdit_Moderno form-control remove-padding" id="MainContent_ddlCountry">
		<tr>
			<td style="display:none;"><input id="MainContent_ddlCountry_VI" name="MainContent_ddlCountry_VI" type="hidden" value="MY" /></td><td class="dxeIIC" style="padding-left:0px;padding-top:0px;padding-bottom:0px;vertical-align:middle;"><img src="/eMAXRNRBARAKAH/Images/Country/malaysia.png" alt="" style="height:15px;width:20px;" /></td><td class="dxic" style="width:100%;"><input class="dxeEditArea_Moderno dxeEditAreaSys" id="MainContent_ddlCountry_I" name="ctl00$MainContent$ddlCountry" onfocus="ASPx.EGotFocus(&#39;MainContent_ddlCountry&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_ddlCountry&#39;)" onchange="ASPx.ETextChanged(&#39;MainContent_ddlCountry&#39;)" value="MY (+60) " type="text" /></td><td id="MainContent_ddlCountry_B-1" class="dxeButton dxeButtonEditButton_Moderno" style="-webkit-user-select:none;"><img id="MainContent_ddlCountry_B-1Img" class="dxEditors_edtDropDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" /></td>
		</tr>
	</table><div id="MainContent_ddlCountry_DDD_PW-1" class="dxpcDropDown_Moderno dxpclW dxpc-ddSys dxdd-root" style="z-index:10000;display:none;visibility:hidden;">
		<div class="dxpc-mainDiv dxdd-list dxpc-shadow">
			<div class="dxpc-contentWrapper">
				<div class="dxpc-content">
					<table class="dxeListBox_Moderno" id="MainContent_ddlCountry_DDD_L" style="border-collapse:separate;">
						<tr>
							<td style="vertical-align:Top;"><div id="MainContent_ddlCountry_DDD_L_D" class="dxlbd" style="width:100%;overflow:auto;">
								<input id="MainContent_ddlCountry_DDD_L_VI" type="hidden" name="ctl00$MainContent$ddlCountry$DDD$L" /><table style="border-collapse:separate;visibility:hidden!important;display:none!important;">
									<tr id="MainContent_ddlCountry_DDD_L_LBI-1" class="dxeListBoxItemRow_Moderno">
										<td id="MainContent_ddlCountry_DDD_L_LBII" class="dxeListBoxItem_Moderno dxeI" style="width:20px;padding-right:4px!important;"><img src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="height:15px;width:20px;" /></td><td id="MainContent_ddlCountry_DDD_L_LBIT" class="dxeListBoxItem_Moderno dxeT">&nbsp;</td>
									</tr>
								</table><table id="MainContent_ddlCountry_DDD_L_LBT" style="width:100%;border-collapse:separate;">

								</table>
							</div></td>
						</tr>
					</table><script id="dxss_1537221927" type="text/javascript">
<!--
ASPx.createControl(ASPxClientListBox,'MainContent_ddlCountry_DDD_L','',{'uniqueID':'ctl00$MainContent$ddlCountry$DDD$L','scStates':6,'scPostfix':'Moderno','savedSelectedIndex':1,'isSyncEnabled':false,'isComboBoxList':true,'imageCellExists':true,'hasSampleItem':true,'hoverClasses':['dxeListBoxItemHover_Moderno'],'selectedClasses':['dxeListBoxItemSelected_Moderno'],'disabledClasses':['dxeDisabled_Moderno'],'itemsInfo':[{'value':'','text':'Choose Country','imageUrl':''},{'value':'MY','text':'MY (+60) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/malaysia.png'},{'value':'SG','text':'SG (+65) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/singapore.png'},{'value':'LA','text':'LA (+856) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/laos.png'},{'value':'US','text':'US (+1) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/america.png'},{'value':'CN','text':'CN (+86) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/china.png'},{'value':'DE','text':'DE (+49) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/germany.png'},{'value':'IN','text':'IN (+91) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/india.png'},{'value':'ID','text':'ID (+62) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/indonesia.png'},{'value':'JP','text':'JP (+81) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/japan.png'},{'value':'KR','text':'KR (+82) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/korea.png'},{'value':'TW','text':'TW (+886) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/taiwan.png'},{'value':'TH','text':'TH (+66) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/thailand.png'},{'value':'VN','text':'VN (+84) ','imageUrl':'/eMAXRNRBARAKAH/Images/Country/vietnam.png'}]},{'SelectedIndexChanged':function (s, e) { ASPx.CBLBSelectedIndexChanged('MainContent_ddlCountry', e); },'ItemClick':function (s, e) { ASPx.CBLBItemMouseUp('MainContent_ddlCountry', e); }},null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}]});

//-->
</script>
				</div>
			</div>
		</div>
	</div><script id="dxss_1422623574" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_ddlCountry_DDD',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_ddlCountry_DDD','',{'uniqueID':'ctl00$MainContent$ddlCountry$DDD','adjustInnerControlsSizeOnShow':false,'popupAnimationType':'slide','closeAction':'CloseButton','popupHorizontalAlign':'LeftSides','popupVerticalAlign':'Below'},{'Shown':function (s, e) { ASPx.DDBPCShown('MainContent_ddlCountry', e); }});

//-->
</script><script id="dxss_741247194" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_ddlCountry',[[['dxeButtonEditButtonHover_Moderno'],[''],['B-1']]]);
ASPx.RemoveHoverItems('MainContent_ddlCountry',[[['B-100']]]);
ASPx.AddPressedItems('MainContent_ddlCountry',[[['dxeButtonEditButtonPressed_Moderno'],[''],['B-1']]]);
ASPx.RemovePressedItems('MainContent_ddlCountry',[[['B-100']]]);
ASPx.createControl(ASPxClientComboBox,'MainContent_ddlCountry','',{'autoPostBack':true,'uniqueID':'ctl00$MainContent$ddlCountry','autoCompleteAttribute':{'name':'autocomplete','value':'off'},'ddmInput':true,'lastSuccessValue':'MY','islastSuccessValueInit':true},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}]});

//-->
</script>
                                                </td>
                                                <td>
                                                    <input name="ctl00$MainContent$txtContactNo" type="text" value="+601128817745" maxlength="15" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$txtContactNo\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="MainContent_txtContactNo" class="form-control" placeholder="Eg. +60123456789 " />
                                                </td>
                                            </tr>
                                        </table>
                                        
                                        
                                        
                                    
</div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                <span id="MainContent_lblCaptionEmail" class="form-label">Email</span>
                                <textarea name="ctl00$MainContent$txtEmail" rows="2" cols="20" id="MainContent_txtEmail" disabled="disabled" class="aspNetDisabled form-control" style="height:38px;width:100%;">
</textarea>
                            </div>
                        </div>

                        <!-- PO Info -->
                        <div class="row align-items-center">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <span id="MainContent_lblCaptionPONo" class="form-label">Nombor pesanan pembelian</span>
                                <input name="ctl00$MainContent$txtPONo" type="text" maxlength="20" id="MainContent_txtPONo" class="form-control" />
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <span id="MainContent_lblCaptionRefNo" class="form-label">Nombor rujukan</span>
                                <input name="ctl00$MainContent$txtRefNo" type="text" maxlength="50" id="MainContent_txtRefNo" class="form-control" />
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                
                                
                                
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                <div class="form-label">&nbsp;</div>
                                
                                <span id="MainContent_lblCurrencyMsg" style="color:Red;font-weight:bold;z-index: 0"></span>
                            </div>
                        </div>

                        <!-- Salesman Info -->
                        <div class="row align-items-center">
                        </div>



                    </div>


                </div>

                <!-- 3rd collumn Order No Info -->
                <div class="col-12 col-sm-6 col-md-6 col-lg-2 col-xl-2" style="border-left: solid; border-left-color: #181c210f; border-left-width: 1px">
                    <div class="row-fluid">
                        <div class="span12">
                            <span id="MainContent_lblInvoiceNoDisplay" class="form-label" style="z-index: 0">Invois No</span>
                            <input name="ctl00$MainContent$txtInvoiceNo" type="text" value="(System Auto Generate)" maxlength="15" id="MainContent_txtInvoiceNo" class="form-control" onfocus="txtCustomDocumentNo_Focused(this)" onfocusout="txtCustomDocumentNo_Unfocused(this)" action-mode="create" />
                        </div>
                        <div class="span12">
                            <span id="MainContent_lblCaptionDate" class="form-label">Tarikh</span>
                            <table id="MainContent_txtInvoiceDate_LP" class="dxeLoadingPanel_Moderno dxlpLoadingPanel_Moderno" style="left:0px;top:0px;z-index:30000;display:none;">
	<tr>
		<td class="dx" style="padding-right:0px;"><img class="dxlp-loadingImage dxlp-imgPosLeft" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="vertical-align:middle;" /></td><td class="dx" style="padding-left:0px;"><span id="MainContent_txtInvoiceDate_TL">Loading&hellip;</span></td>
	</tr>
</table><table class="dxeButtonEditSys dxeButtonEdit_Moderno form-control" id="MainContent_txtInvoiceDate">
	<tr>
		<td class="dxic" onmousedown="return ASPx.DDMC_MD(&#39;MainContent_txtInvoiceDate&#39;, event)" style="width:100%;"><input class="dxeEditArea_Moderno dxeEditAreaSys" id="MainContent_txtInvoiceDate_I" name="ctl00$MainContent$txtInvoiceDate" onfocus="ASPx.EGotFocus(&#39;MainContent_txtInvoiceDate&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_txtInvoiceDate&#39;)" onchange="ASPx.ETextChanged(&#39;MainContent_txtInvoiceDate&#39;)" value="14/04/2025" type="text" /></td><td id="MainContent_txtInvoiceDate_B-1" class="dxeButton dxeButtonEditButton_Moderno" style="-webkit-user-select:none;"><img id="MainContent_txtInvoiceDate_B-1Img" class="dxEditors_edtDropDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" /></td>
	</tr>
</table><div id="MainContent_txtInvoiceDate_DDD_PW-1" class="dxpcDropDown_Moderno dxpclW dxpc-ddSys dxdd-root" style="z-index:10000;display:none;visibility:hidden;">
	<div class="dxpc-mainDiv dxdd-cal dxpc-shadow">
		<div class="dxpc-contentWrapper">
			<div class="dxpc-content">
				<table style="display:none;">
					<tr>
						<td id="MainContent_txtInvoiceDate_DDD_C_EC_D" class="dxeCalendarDay_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_DS" class="dxeCalendarSelected_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_DH" class="dxeCalendarHover_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_DA" class="dxeCalendarOtherMonth_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_DO" class="dxeCalendarOutOfRange_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_DDD" class="dxeCalendarDayDisabled_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_DW" class="dxeCalendarWeekend_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_DT" class="dxeCalendarToday_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_DD" class="dxeDisabled_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_FNI" class="dxeCalendarFastNavItem_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_FNIS" class="dxeCalendarFastNavItemSelected_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_FNIH" class="dxeCalendarFastNavItemHover_Moderno"></td><td id="MainContent_txtInvoiceDate_DDD_C_EC_FNIA" class="dxeCalendarFastNavItemOtherPeriod_Moderno"></td>
					</tr>
				</table><table class="dxeCVC dxeCalendar_Moderno" id="MainContent_txtInvoiceDate_DDD_C">
					<tr>
						<td style="vertical-align:Top;"><table style="width:100%;border-collapse:collapse;">
							<tr>
								<td class="dxeCalendarHeader_Moderno" style="border-top:0;"><table style="width:100%;border-collapse:collapse;">
									<tr>
										<td id="MainContent_txtInvoiceDate_DDD_C_PTPC" class="dxe" style="display:none;"><img id="MainContent_txtInvoiceDate_DDD_C_PTPCImg" class="dxEditors_edtCalendarFNPrevPeriod_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="&lt;" /></td><td id="MainContent_txtInvoiceDate_DDD_C_PYC" class="dxe"><img id="MainContent_txtInvoiceDate_DDD_C_PYCImg" class="dxEditors_edtCalendarPrevYear_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="&lt;&lt;" /></td><td class="dxeCHS"></td><td id="MainContent_txtInvoiceDate_DDD_C_PMC" class="dxe"><img id="MainContent_txtInvoiceDate_DDD_C_PMCImg" class="dxEditors_edtCalendarPrevMonth_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="&lt;" /></td><td id="MainContent_txtInvoiceDate_DDD_C_TC" class="dxe" style="width:100%;cursor:default;"><span id="MainContent_txtInvoiceDate_DDD_C_T" style="cursor:pointer;">April, 2025</span></td><td id="MainContent_txtInvoiceDate_DDD_C_NMC" class="dxe"><img id="MainContent_txtInvoiceDate_DDD_C_NMCImg" class="dxEditors_edtCalendarNextMonth_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" /></td><td class="dxeCHS"></td><td id="MainContent_txtInvoiceDate_DDD_C_NYC" class="dxe"><img id="MainContent_txtInvoiceDate_DDD_C_NYCImg" class="dxEditors_edtCalendarNextYear_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">>" /></td><td id="MainContent_txtInvoiceDate_DDD_C_NTPC" class="dxe" style="display:none;"><img id="MainContent_txtInvoiceDate_DDD_C_NTPCImg" class="dxEditors_edtCalendarFNNextPeriod_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" /></td>
									</tr>
								</table></td>
							</tr><tr>
								<td id="MainContent_txtInvoiceDate_DDD_C_mc" class="dxMonthGridWithWeekNumbers" style="-webkit-user-select:none;"><table id="MainContent_txtInvoiceDate_DDD_C_mt" style="width:100%;border-collapse:separate;">
									<tr class="dx-ac">
										<td></td><td class="dxeCalendarDayHeader_Moderno">Sun</td><td class="dxeCalendarDayHeader_Moderno">Mon</td><td class="dxeCalendarDayHeader_Moderno">Tue</td><td class="dxeCalendarDayHeader_Moderno">Wed</td><td class="dxeCalendarDayHeader_Moderno">Thu</td><td class="dxeCalendarDayHeader_Moderno">Fri</td><td class="dxeCalendarDayHeader_Moderno">Sat</td>
									</tr><tr>
										<td class="dxeCalendarWeekNumber_Moderno">14</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno dxeCalendarOtherMonth_Moderno">30</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">31</td><td class="dxeCalendarDay_Moderno">1</td><td class="dxeCalendarDay_Moderno">2</td><td class="dxeCalendarDay_Moderno">3</td><td class="dxeCalendarDay_Moderno">4</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">5</td>
									</tr><tr>
										<td class="dxeCalendarWeekNumber_Moderno">15</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">6</td><td class="dxeCalendarDay_Moderno">7</td><td class="dxeCalendarDay_Moderno">8</td><td class="dxeCalendarDay_Moderno">9</td><td class="dxeCalendarDay_Moderno">10</td><td class="dxeCalendarDay_Moderno">11</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">12</td>
									</tr><tr>
										<td class="dxeCalendarWeekNumber_Moderno">16</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">13</td><td class="dxeCalendarDay_Moderno dxeCalendarToday_Moderno">14</td><td class="dxeCalendarDay_Moderno">15</td><td class="dxeCalendarDay_Moderno">16</td><td class="dxeCalendarDay_Moderno">17</td><td class="dxeCalendarDay_Moderno">18</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">19</td>
									</tr><tr>
										<td class="dxeCalendarWeekNumber_Moderno">17</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">20</td><td class="dxeCalendarDay_Moderno">21</td><td class="dxeCalendarDay_Moderno">22</td><td class="dxeCalendarDay_Moderno">23</td><td class="dxeCalendarDay_Moderno">24</td><td class="dxeCalendarDay_Moderno">25</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">26</td>
									</tr><tr>
										<td class="dxeCalendarWeekNumber_Moderno">18</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">27</td><td class="dxeCalendarDay_Moderno">28</td><td class="dxeCalendarDay_Moderno">29</td><td class="dxeCalendarDay_Moderno">30</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">1</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">2</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno dxeCalendarOtherMonth_Moderno">3</td>
									</tr><tr>
										<td class="dxeCalendarWeekNumber_Moderno">19</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno dxeCalendarOtherMonth_Moderno">4</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">5</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">6</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">7</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">8</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">9</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno dxeCalendarOtherMonth_Moderno">10</td>
									</tr>
								</table></td>
							</tr><tr>
								<td id="MainContent_txtInvoiceDate_DDD_C_yc" class="dxFastNavGrid" style="display:none;"><table id="MainContent_txtInvoiceDate_DDD_C_yt" class="dxeCalendarFastNav_Moderno" style="height:100%;width:100%;border-collapse:separate;">
									<tr>
										<td class="dxeCalendarFastNavItemArea_Moderno" style="height:100%;width:100%;"><table id="MainContent_txtInvoiceDate_DDD_C_yt_n" style="height:100%;width:100%;border-collapse:separate;">
											<tr>
												<td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Jan</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Feb</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Mar</td><td class="dxeCalendarFastNavItem_Moderno">Apr</td>
											</tr><tr>
												<td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">May</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Jun</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Jul</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Aug</td>
											</tr><tr>
												<td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Sep</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Oct</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Nov</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Dec</td>
											</tr>
										</table></td>
									</tr>
								</table></td>
							</tr>
						</table></td>
					</tr><tr>
						<td id="MainContent_txtInvoiceDate_DDD_C_F" class="dxeCalendarFooter_Moderno"><button id="MainContent_txtInvoiceDate_DDD_C_BT" class="dxeCalendarButton_Moderno" type="button">Today</button><button id="MainContent_txtInvoiceDate_DDD_C_BC" class="dxeCalendarButton_Moderno" type="button">Clear</button></td>
					</tr>
				</table><script id="dxss_2088777677" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_txtInvoiceDate_DDD_C',[[['dxeCalendarButtonHover_Moderno'],[''],['BT','BC','BO','BCN','FNP_BO','FNP_BC']]]);
ASPx.AddPressedItems('MainContent_txtInvoiceDate_DDD_C',[[['dxeCalendarButtonPressed_Moderno'],[''],['BT','BC','BO','BCN','FNP_BO','FNP_BC']]]);
ASPx.AddDisabledItems('MainContent_txtInvoiceDate_DDD_C',[[['dxeDisabled_Moderno'],[''],['']],[['dxeDisabled_Moderno dxeButtonDisabled_Moderno'],[''],['BT','BC','BO','BCN','FNP_BO','FNP_BC']],[[''],[''],['PYC','PMC','NMC','NYC'],,[[{'spriteCssClass':'dxEditors_edtCalendarPrevYearDisabled_Moderno'}],[{'spriteCssClass':'dxEditors_edtCalendarPrevMonthDisabled_Moderno'}],[{'spriteCssClass':'dxEditors_edtCalendarNextMonthDisabled_Moderno'}],[{'spriteCssClass':'dxEditors_edtCalendarNextYearDisabled_Moderno'}]],['Img']]]);
ASPx.createControl(ASPxClientCalendar,'MainContent_txtInvoiceDate_DDD_C','',{'uniqueID':'ctl00$MainContent$txtInvoiceDate$DDD$C','scStates':2,'scPostfix':'Moderno','serverCurrentDate':new Date(2025,3,14,0,0,0,0),'visibleDate':new Date(2025,3,14,0,0,0,0),'fastNavRollbackTexts':['Back To Days', 'Back To Months', 'Back To Years'],'isDateEditCalendar':true},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}],'selection':[new Date(2025,3,14,0,0,0,0)]});

//-->
</script>
			</div>
		</div>
	</div>
</div><script id="dxss_157328756" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_txtInvoiceDate_DDD',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_txtInvoiceDate_DDD','',{'uniqueID':'ctl00$MainContent$txtInvoiceDate$DDD','adjustInnerControlsSizeOnShow':false,'popupAnimationType':'slide','closeAction':'CloseButton','popupHorizontalAlign':'LeftSides','popupVerticalAlign':'Below'},{'Shown':function (s, e) { ASPx.DDBPCShown('MainContent_txtInvoiceDate', e); }});

//-->
</script><script id="dxss_1460928138" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_txtInvoiceDate',[[['dxeButtonEditButtonHover_Moderno'],[''],['B-1']]]);
ASPx.RemoveHoverItems('MainContent_txtInvoiceDate',[[['B-100']]]);
ASPx.AddPressedItems('MainContent_txtInvoiceDate',[[['dxeButtonEditButtonPressed_Moderno'],[''],['B-1']]]);
ASPx.RemovePressedItems('MainContent_txtInvoiceDate',[[['B-100']]]);
ASPx.createControl(ASPxClientDateEdit,'MainContent_txtInvoiceDate','',{'callBack':function(arg) { WebForm_DoCallback('ctl00$MainContent$txtInvoiceDate',arg,ASPx.Callback,'MainContent_txtInvoiceDate',ASPx.CallbackError,true); },'uniqueID':'ctl00$MainContent$txtInvoiceDate','stateObject':{'rawValue':'1744588800000'},'displayFormat':'{0:dd/MM/yyyy}','autoCompleteAttribute':{'name':'autocomplete','value':'off'},'outOfRangeWarningClassName':'dxeOutOfRWarn_Moderno dxeOutOfRWarnRight_Moderno','outOfRangeWarningMessages':['The date must be in the range {0}...{1}', 'The date must be greater than or equal to {0}', 'The date must be less than or equal to {0}'],'date':new Date(2025,3,14,0,0,0,0),'dateFormatter':ASPx.DateFormatter.Create('dd/MM/yyyy')},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}]});

//-->
</script>
                        </div>
                        <div class="span12">
                            <span id="MainContent_lblCaptionTime" class="form-label">Masa</span>
                            <span id="MainContent_lblInvoiceTime" class="form-control">(System Time)</span>
                        </div>
                        <div class="span12">
                            

                        </div>
                    </div>
                </div>
            </div>
            <div id="MainContent_divHeader2" class="row align-items-center">
                <div class="col">
                    <span id="MainContent_lblInvoiceRemarkDisplay" class="form-label">Catatan Invois</span>
                    <textarea name="ctl00$MainContent$txtInvoiceRemark" rows="2" cols="20" id="MainContent_txtInvoiceRemark" class="form-control" maxlength="200">
</textarea>

                </div>
            </div>

        </div>
    </div>



    <div id="MainContent_tblCustomer">
        <div class="row">
            

            <div id="MainContent_tdOutstanding" class="col-sm-6 col-lg-6 col-xl-3 mb-1">
                <div class="card" style="background-color: white !important;">
                    <div class="card-body" style="padding: 5px; padding-left: 20px">
                        <div class="d-flex align-items-center">
                            <div class="display-4 text-success"><i class="fas fa-database"></i></div>
                            <div class="ml-3">
                                <div>
                                    <span id="MainContent_lblCaptionCurrentOutstanding1" class="form-label">Semasa Cemerlang</span>
                                </div>
                                <div>
                                    <a id="MainContent_lnkOutstandingDetail" href="javascript:__doPostBack(&#39;ctl00$MainContent$lnkOutstandingDetail&#39;,&#39;&#39;)" style="text-decoration:underline;">80.00</a>
                                    &nbsp;&nbsp;&nbsp;
                                    <a id="MainContent_lnkOutstandingHistory" href="javascript:__doPostBack(&#39;ctl00$MainContent$lnkOutstandingHistory&#39;,&#39;&#39;)" style="text-decoration:underline;"><span id="MainContent_lblCaptionHistory">History</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="MainContent_tdOutstandingB4ThisMonth" class="col-sm-6 col-lg-6 col-xl-3 mb-1">
                <div class="card" style="background-color: white !important;">
                    <div class="card-body" style="padding: 5px; padding-left: 20px">
                        <div class="d-flex align-items-center">
                            <div class="display-4 text-warning"><i class="fas fa-file-invoice"></i></div>
                            <div class="ml-3">
                                <div>
                                    <span id="MainContent_lblCaptionBeforeThisMonth" class="form-label">Tunggakan Bulan Ini</span>
                                </div>
                                <div>
                                    <span id="MainContent_lblOutstandingBeforeThisMonth">80.00</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="MainContent_tdCreditLimit" class="col-sm-6 col-lg-6 col-xl-3 mb-1">
                <div class="card" style="background-color: white !important;">
                    <div class="card-body" style="padding: 5px; padding-left: 20px">
                        <div class="d-flex align-items-center">
                            <div class="display-4 text-info"><i class="lnr lnr-layers"></i></div>
                            <div class="ml-3">
                                <div>
                                    <span id="MainContent_lblCaptionCurrentCreditTerm">Credit Term</span>
                                    / 
                                    <span id="MainContent_lblCaptionCurrentCreditLimit">Credit Limit</span>
                                </div>
                                <div>
                                    <span id="MainContent_lblCreditLimit" class="form-label" style="z-index: 0">0.00</span>
                                    (<span id="MainContent_lblCreditTerm" class="form-label"></span>)
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="MainContent_tdTotal" class="col-sm-6 col-lg-6 col-xl-3 mb-1">
                <div class="card" style="background-color: white !important;">
                    <div class="card-body" style="padding: 5px; padding-left: 20px">
                        <div class="d-flex align-items-center">
                            <div class="display-4 text-secondary"><i class="fas fa-hand-holding-usd"></i></div>
                            <div class="ml-3">
                                <div>
                                    Jumlah  Perintah
                                </div>
                                <div>
                                    <span id="MainContent_lblTotalInput1">0.00</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>


        <div id="MainContent_divDetail" class="card">
            <div class="card-body">

                <ul class="nav nav-tabs">
                    <li class="nav-item"><a href="#ItemInfo" id="MainContent_TabItemInfo" class="nav-link active" data-toggle="tab"><i class="fas fa-dice-d6"></i>&nbsp; Maklumat Item</a></li>
                    <li class="nav-item"><a href="#ShippingInfo" id="MainContent_TabShipInfo" class="nav-link" data-toggle="tab"><i class="fas fa-shipping-fast"></i>&nbsp; Shipping Info</a> </li>
                    <li class="nav-item"><a href="#MoreInfo" id="MainContent_TabMoreInfo" class="nav-link" data-toggle="tab"><i class="fas fa-info-circle"></i>&nbsp;  More Info</a> </li>
                </ul>
                <div class="tab-content">

                    <div class="tab-pane fade in active" id="ItemInfo">
                        <br />
                        
                        
                        
                        <div>
                            
                            <div class="row align-items-center">
                                <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                    
                                    
                                </div>

                            </div>
                            <div class="row align-items-bottom">
                                <div class="col-12 col-sm-12 col-md-12 col-lg-8 col-xl-8">
                                    <div class="row">
                                        <span class="col-2 text-sm-right">
                                            <span id="MainContent_lblCaptionItemCode" class="form-label">Kod barang</span>
                                        </span>
                                        <span class="col-5">
                                            <input name="ctl00$MainContent$txtInventoryCode" type="text" id="MainContent_txtInventoryCode" class="form-control" autocomplete="off" onkeydown="if(event.which || event.keyCode){if ((event.which == 13) || (event.keyCode == 13)) {__doPostBack(&#39;ctl00$MainContent$btnLookupInventory&#39;,&#39;&#39;);return false;}} else {return true}; " style="background-color:#FDFFBA;" />
                                        </span>
                                        <span class="col-5">
                                            <input type="submit" name="ctl00$MainContent$btnLookupInventory" value="Lihat" id="MainContent_btnLookupInventory" class="btn btn-dark" />
                                            &nbsp;
                                            <a onclick="lnkNewInventory_Click(); return false;" id="MainContent_lnkNewInventory" href="javascript:__doPostBack(&#39;ctl00$MainContent$lnkNewInventory&#39;,&#39;&#39;)" style="text-decoration:underline;">Persediaan Baru</a>
                                        </span>
                                    </div>
                                    <br />
                                    <div id="MainContent_UpdatePanel12222">
	
                                            <div class="row">
                                                <div class="col-2 text-sm-right">
                                                    <span id="MainContent_lblCaptionDesc" class="form-label">Penerangan</span>
                                                </div>
                                                <div class="col-9">
                                                    <textarea name="ctl00$MainContent$txtInventoryDesc" rows="2" cols="20" id="MainContent_txtInventoryDesc" class="form-control" maxlength="500" style="background-color:#FDFFBA;height:38px;width:100%;">
</textarea>
                                                </div>
                                                <!--For Description Product-->
                                                <div class="col-1 mt-2">
                                                    
                                                </div>
                                            </div>
                                        
</div>
                                </div>

                                <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-xl-3">
                                    
                                </div>
                                <br />
                                <span id="MainContent_lblLookupInventoryMsg" style="color:Red;"></span>
                            </div>
                            <div class="row align-items-center">
                                <div class="col-12">
                                    
                                </div>


                            </div>
                            <div class="row align-items-center">
                                <span class="col-12 col-sm-6 col-md-6 col-lg-2 col-xl-2 text-sm-right"></span>
                                <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                </div>
                            </div>

                        </div>
                        <div id="MainContent_Div4">
                            <div class="row align-items-center">

                                <div class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <span id="MainContent_lblCaptionQty" class="form-label">Kuantiti</span>
                                    <input name="ctl00$MainContent$txtQty" type="text" id="MainContent_txtQty" class="form-control" style="background-color:#FDFFBA;" />
                                </div>
                                <div id="MainContent_hidenfield">
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                </div>
                                <div id="MainContent_tblItemUOM" class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <span id="MainContent_lblCaptionUOM" class="form-label">UOM</span>
                                    <select name="ctl00$MainContent$ddlUOM" id="MainContent_ddlUOM" class="form-control">
	<option selected="selected" value="-1"></option>
	<option value="4">BTL</option>
	<option value="6">JOB</option>
	<option value="1">PCS</option>
	<option value="3">SET</option>
	<option value="5">UNIT</option>

</select>
                                </div>
                                <div class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <span id="MainContent_lblCaptionUnitPrice" class="form-label">Harga seunit</span>
                                    <input name="ctl00$MainContent$txtUnitPrice" type="text" id="MainContent_txtUnitPrice" class="form-control" style="background-color:#FDFFBA;" />
                                </div>
                                <div id="MainContent_tblItemDiscount" class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <span id="MainContent_lblCaptionDiscount" class="form-label">Diskaun</span>
                                    <input name="ctl00$MainContent$txtItemDiscount" type="text" id="MainContent_txtItemDiscount" class="form-control" />
                                </div>
                                <div id="MainContent_tblItemEmployee" class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <span id="MainContent_lblCaptionEmployee" class="form-label">Pekerja</span>
                                    <select name="ctl00$MainContent$ddlItemSalesman" id="MainContent_ddlItemSalesman" class="form-control">
	<option selected="selected" value="-1"></option>
	<option value="5">BAKHT MUNEER</option>
	<option value="3">kyaw zay yar</option>
	<option value="4">MOHD FAIZUL FAZLAN BIN DARONI</option>
	<option value="2">muhammad azizan bin anuar</option>
	<option value="1">paiman ismail</option>
	<option value="6">ROSSLINA BINTI MAHMOOD</option>

</select>
                                </div>
                                <div id="MainContent_tblItemRemark" class="col-12 col-sm-4 col-md-2 col-lg-2 col-xl-2">
                                    <span id="MainContent_lblCaptionRemark" class="form-label">Catatan</span>
                                    <textarea name="ctl00$MainContent$txtItemRemark" rows="2" cols="20" id="MainContent_txtItemRemark" class="form-control Resize" maxlength="200" style="height:38px;width:100%;">
</textarea>
                                </div>
                                <div id="MainContent_tblItemAccount" class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <span id="MainContent_lblItemAccount" class="form-label">Akaun</span>
                                    <select name="ctl00$MainContent$ddlItemAccount" id="MainContent_ddlItemAccount" class="form-control">
	<option selected="selected" value="-1"></option>
	<option value="168">FURNITURE &amp; FITTINGS</option>
	<option value="6">OFFICE EQUIPMENT</option>
	<option value="52">COMPUTER &amp; SOFTWARE</option>
	<option value="169">SIGNAGES</option>
	<option value="17246">AIRCOND</option>
	<option value="11208">MOTOR VEHICLE</option>
	<option value="113">ACC.DEP - FURNITURE &amp; FITTINGS</option>
	<option value="114">ACC.DEP - OFFICE EQUIPMENT</option>
	<option value="118">ACC.DEP - COMPUTER &amp; SOFTWARE</option>
	<option value="170">ACC.DEP - SIGNAGES</option>
	<option value="17248">ACC.DEP - AIRCOND</option>
	<option value="17250">ACC.DEP - MOTOR VEHICLES</option>
	<option value="8198">AMOUNT DUE TO/FROM DIRECTOR</option>
	<option value="111">ACCRUAL</option>
	<option value="2191">OTHER CREDITOR</option>
	<option value="46">TAX ACCRUAL</option>
	<option value="42">PROVISION FOR TAXATION</option>
	<option value="123">DEFERRED TAXATION</option>
	<option value="119">ACCRUAL</option>
	<option value="51">SHARE CAPITAL</option>
	<option value="47">Retained Earning B/F</option>
	<option value="19254">SALES</option>
	<option value="34">Other Incomes</option>

</select>
                                </div>
                                <div id="MainContent_tblItemFOC" class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <span id="MainContent_lblCaptionFOC" class="form-label">Percuma</span>
                                    <span class="form-control"><input id="MainContent_chkFOC" type="checkbox" name="ctl00$MainContent$chkFOC" /></span>
                                </div>
                                <div id="MainContent_tblItemLocation" class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <span id="MainContent_lblCaptionLocation" class="form-label">Lokasi</span>
                                    <select name="ctl00$MainContent$ddlItemLocation" id="MainContent_ddlItemLocation" class="form-control">
	<option selected="selected" value="-1"></option>
	<option value="1">Main Shop</option>

</select>
                                </div>
                                
                                
                                <div class="col-12 col-sm-4 col-md-2 col-lg-1 col-xl-1">
                                    <div class="form-label">&nbsp;</div>
                                    <input type="submit" name="ctl00$MainContent$btnAddItems" value="Tambah" id="MainContent_btnAddItems" class="btn btn-dark" />
                                </div>


                            </div>
                            <div class="row align-items-center">
                                <span id="MainContent_lblSalesDetailMsg" style="color:Red;font-weight:bold;"></span>
                            </div>

                        </div>
                        <br />
                        <!--Resequence Part-->
                        <div id="MainContent_DivResequence" class="row">
                            <div class="col-12">
                                <label class="switch mt-2">
                                    <input id="MainContent_checkBoxResequence" type="checkbox" name="ctl00$MainContent$checkBoxResequence" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$checkBoxResequence\&#39;,\&#39;\&#39;)&#39;, 0)" />
                                    <span class="slider round"></span>
                                </label>
                                <span id="MainContent_lblSwitchResequence" class="form-label">Urutan Barang [OFF]</span>
                            </div>
                        </div>
                        <div class="row align-items-center">
                            <div class="table-responsive">
                                
                                
                                
                            </div>


                        </div>


                    </div>
                    <div class="tab-pane fade" id="ShippingInfo">
                        <div id="MainContent_UpdatePanel5">
	

                                <br />
                                <div class="row align-items-center">
                                    <div id="MainContent_trShiptype" class="tan-cooper-label col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                        <span id="MainContent_lblCaptionShipType" class="form-label">Ship Type</span>
                                        <select name="ctl00$MainContent$ddlShipType" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$ddlShipType\&#39;,\&#39;\&#39;)&#39;, 0)" id="MainContent_ddlShipType" class="form-control">
		<option selected="selected" value="1">Normal Shipment                                   </option>
		<option value="2">Direct Shipment                                   </option>
		<option value="3">Own Collection                                    </option>

	</select>
                                    </div>
                                </div>


                                <div class="row align-items-center">
                                    
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                        <span id="MainContent_lblCaptionShipTo" class="form-label">Hantar ke</span>
                                        <table class="dxeButtonEditSys dxeButtonEdit_Moderno form-control" id="MainContent_ddlShipTo">
		<tr>
			<td style="display:none;"><input id="MainContent_ddlShipTo_VI" name="MainContent_ddlShipTo_VI" type="hidden" value="-1" /></td><td class="dxic" style="width:100%;"><input class="dxeEditArea_Moderno dxeEditAreaSys" id="MainContent_ddlShipTo_I" name="ctl00$MainContent$ddlShipTo" onfocus="ASPx.EGotFocus(&#39;MainContent_ddlShipTo&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_ddlShipTo&#39;)" onchange="ASPx.ETextChanged(&#39;MainContent_ddlShipTo&#39;)" type="text" /></td><td id="MainContent_ddlShipTo_B-1" class="dxeButton dxeButtonEditButton_Moderno" style="-webkit-user-select:none;"><img id="MainContent_ddlShipTo_B-1Img" class="dxEditors_edtDropDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" /></td>
		</tr>
	</table><div id="MainContent_ddlShipTo_DDD_PW-1" class="dxpcDropDown_Moderno dxpclW dxpc-ddSys dxdd-root" style="z-index:10000;display:none;visibility:hidden;">
		<div class="dxpc-mainDiv dxdd-list dxpc-shadow">
			<div class="dxpc-contentWrapper">
				<div class="dxpc-content">
					<table class="dxeListBox_Moderno" id="MainContent_ddlShipTo_DDD_L" style="border-collapse:separate;">
						<tr>
							<td style="vertical-align:Top;"><div id="MainContent_ddlShipTo_DDD_L_H" class="dxeHD">
								<table style="width:100%;border-collapse:separate;table-layout:fixed!important;">
									<tr>
										<td class="dxeListBoxItem_Moderno dxeHFC" style="width:480px;">Company Name</td><td class="dxeListBoxItem_Moderno dxeHC" style="width:280px;">Address 1</td><td class="dxeListBoxItem_Moderno dxeHC" style="width:280px;">Address 2</td><td class="dxeListBoxItem_Moderno dxeHC" style="width:280px;">Address 3</td><td class="dxeListBoxItem_Moderno dxeHLC" style="width:100px;">Ship To Code </td>
									</tr>
								</table>
							</div><div id="MainContent_ddlShipTo_DDD_L_D" class="dxlbd" style="overflow:auto;">
								<input id="MainContent_ddlShipTo_DDD_L_VI" type="hidden" name="ctl00$MainContent$ddlShipTo$DDD$L" /><table style="border-collapse:separate;visibility:hidden!important;display:none!important;">
									<tr id="MainContent_ddlShipTo_DDD_L_LBI-1" class="dxeListBoxItemRow_Moderno">
										<td id="MainContent_ddlShipTo_DDD_L_LBII" class="dxeListBoxItem_Moderno dxeFTM" style="width:480px;">&nbsp;</td><td class="dxeListBoxItem_Moderno dxeTM" style="width:280px;">&nbsp;</td><td class="dxeListBoxItem_Moderno dxeTM" style="width:280px;">&nbsp;</td><td class="dxeListBoxItem_Moderno dxeTM" style="width:280px;">&nbsp;</td><td class="dxeListBoxItem_Moderno dxeLTM" style="width:100px;">&nbsp;</td>
									</tr>
								</table><table id="MainContent_ddlShipTo_DDD_L_LBT" style="width:100%;border-collapse:separate;table-layout:fixed!important;">

								</table>
							</div></td>
						</tr>
					</table><script id="dxss_199958668" type="text/javascript">
<!--
ASPx.createControl(ASPxClientListBox,'MainContent_ddlShipTo_DDD_L','',{'uniqueID':'ctl00$MainContent$ddlShipTo$DDD$L','scStates':6,'scPostfix':'Moderno','savedSelectedIndex':0,'isSyncEnabled':false,'isComboBoxList':true,'hasSampleItem':true,'columnFieldNames':['Company_Name','Address_1','Address_2','Address_3','Customer_ShipTo_Code'],'textFormatString':'{0} - {1} {2} {3} {4}','hoverClasses':['dxeListBoxItemHover_Moderno'],'selectedClasses':['dxeListBoxItemSelected_Moderno'],'disabledClasses':['dxeDisabled_Moderno'],'itemsInfo':[{'value':-1,'texts':['','','','','']}]},{'SelectedIndexChanged':function (s, e) { ASPx.CBLBSelectedIndexChanged('MainContent_ddlShipTo', e); },'ItemClick':function (s, e) { ASPx.CBLBItemMouseUp('MainContent_ddlShipTo', e); }},null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}]});

//-->
</script>
				</div>
			</div>
		</div>
	</div><script id="dxss_1382281804" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_ddlShipTo_DDD',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_ddlShipTo_DDD','',{'uniqueID':'ctl00$MainContent$ddlShipTo$DDD','adjustInnerControlsSizeOnShow':false,'popupAnimationType':'slide','closeAction':'CloseButton','popupHorizontalAlign':'LeftSides','popupVerticalAlign':'Below'},{'Shown':function (s, e) { ASPx.DDBPCShown('MainContent_ddlShipTo', e); }});

//-->
</script><script id="dxss_2131533894" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_ddlShipTo',[[['dxeButtonEditButtonHover_Moderno'],[''],['B-1']]]);
ASPx.RemoveHoverItems('MainContent_ddlShipTo',[[['B-100']]]);
ASPx.AddPressedItems('MainContent_ddlShipTo',[[['dxeButtonEditButtonPressed_Moderno'],[''],['B-1']]]);
ASPx.RemovePressedItems('MainContent_ddlShipTo',[[['B-100']]]);
ASPx.createControl(ASPxClientComboBox,'MainContent_ddlShipTo','',{'autoPostBack':true,'uniqueID':'ctl00$MainContent$ddlShipTo','autoCompleteAttribute':{'name':'autocomplete','value':'off'},'ddmInput':true,'lastSuccessValue':-1,'islastSuccessValueInit':true},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}]});

//-->
</script>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-2 col-xl-2">
                                        <span id="MainContent_lblCaptionDeliveryDate" class="form-label">Tarikh penghantaran</span>
                                        <table id="MainContent_txtDODate_LP" class="dxeLoadingPanel_Moderno dxlpLoadingPanel_Moderno" style="left:0px;top:0px;z-index:30000;display:none;">
		<tr>
			<td class="dx" style="padding-right:0px;"><img class="dxlp-loadingImage dxlp-imgPosLeft" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="vertical-align:middle;" /></td><td class="dx" style="padding-left:0px;"><span id="MainContent_txtDODate_TL">Loading&hellip;</span></td>
		</tr>
	</table><table class="dxeButtonEditSys dxeButtonEdit_Moderno form-control" id="MainContent_txtDODate">
		<tr>
			<td class="dxic" onmousedown="return ASPx.DDMC_MD(&#39;MainContent_txtDODate&#39;, event)" style="width:100%;"><input class="dxeEditArea_Moderno dxeEditAreaSys" id="MainContent_txtDODate_I" name="ctl00$MainContent$txtDODate" onfocus="ASPx.EGotFocus(&#39;MainContent_txtDODate&#39;)" onblur="ASPx.ELostFocus(&#39;MainContent_txtDODate&#39;)" onchange="ASPx.ETextChanged(&#39;MainContent_txtDODate&#39;)" value="14/04/2025" type="text" /></td><td id="MainContent_txtDODate_B-1" class="dxeButton dxeButtonEditButton_Moderno" style="-webkit-user-select:none;"><img id="MainContent_txtDODate_B-1Img" class="dxEditors_edtDropDown_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="v" /></td>
		</tr>
	</table><div id="MainContent_txtDODate_DDD_PW-1" class="dxpcDropDown_Moderno dxpclW dxpc-ddSys dxdd-root" style="z-index:10000;display:none;visibility:hidden;">
		<div class="dxpc-mainDiv dxdd-cal dxpc-shadow">
			<div class="dxpc-contentWrapper">
				<div class="dxpc-content">
					<table style="display:none;">
						<tr>
							<td id="MainContent_txtDODate_DDD_C_EC_D" class="dxeCalendarDay_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_DS" class="dxeCalendarSelected_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_DH" class="dxeCalendarHover_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_DA" class="dxeCalendarOtherMonth_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_DO" class="dxeCalendarOutOfRange_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_DDD" class="dxeCalendarDayDisabled_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_DW" class="dxeCalendarWeekend_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_DT" class="dxeCalendarToday_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_DD" class="dxeDisabled_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_FNI" class="dxeCalendarFastNavItem_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_FNIS" class="dxeCalendarFastNavItemSelected_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_FNIH" class="dxeCalendarFastNavItemHover_Moderno"></td><td id="MainContent_txtDODate_DDD_C_EC_FNIA" class="dxeCalendarFastNavItemOtherPeriod_Moderno"></td>
						</tr>
					</table><table class="dxeCVC dxeCalendar_Moderno" id="MainContent_txtDODate_DDD_C">
						<tr>
							<td style="vertical-align:Top;"><table style="width:100%;border-collapse:collapse;">
								<tr>
									<td class="dxeCalendarHeader_Moderno" style="border-top:0;"><table style="width:100%;border-collapse:collapse;">
										<tr>
											<td id="MainContent_txtDODate_DDD_C_PTPC" class="dxe" style="display:none;"><img id="MainContent_txtDODate_DDD_C_PTPCImg" class="dxEditors_edtCalendarFNPrevPeriod_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="&lt;" /></td><td id="MainContent_txtDODate_DDD_C_PYC" class="dxe"><img id="MainContent_txtDODate_DDD_C_PYCImg" class="dxEditors_edtCalendarPrevYear_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="&lt;&lt;" /></td><td class="dxeCHS"></td><td id="MainContent_txtDODate_DDD_C_PMC" class="dxe"><img id="MainContent_txtDODate_DDD_C_PMCImg" class="dxEditors_edtCalendarPrevMonth_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="&lt;" /></td><td id="MainContent_txtDODate_DDD_C_TC" class="dxe" style="width:100%;cursor:default;"><span id="MainContent_txtDODate_DDD_C_T" style="cursor:pointer;">April, 2025</span></td><td id="MainContent_txtDODate_DDD_C_NMC" class="dxe"><img id="MainContent_txtDODate_DDD_C_NMCImg" class="dxEditors_edtCalendarNextMonth_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" /></td><td class="dxeCHS"></td><td id="MainContent_txtDODate_DDD_C_NYC" class="dxe"><img id="MainContent_txtDODate_DDD_C_NYCImg" class="dxEditors_edtCalendarNextYear_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">>" /></td><td id="MainContent_txtDODate_DDD_C_NTPC" class="dxe" style="display:none;"><img id="MainContent_txtDODate_DDD_C_NTPCImg" class="dxEditors_edtCalendarFNNextPeriod_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt=">" /></td>
										</tr>
									</table></td>
								</tr><tr>
									<td id="MainContent_txtDODate_DDD_C_mc" class="dxMonthGridWithWeekNumbers" style="-webkit-user-select:none;"><table id="MainContent_txtDODate_DDD_C_mt" style="width:100%;border-collapse:separate;">
										<tr class="dx-ac">
											<td></td><td class="dxeCalendarDayHeader_Moderno">Sun</td><td class="dxeCalendarDayHeader_Moderno">Mon</td><td class="dxeCalendarDayHeader_Moderno">Tue</td><td class="dxeCalendarDayHeader_Moderno">Wed</td><td class="dxeCalendarDayHeader_Moderno">Thu</td><td class="dxeCalendarDayHeader_Moderno">Fri</td><td class="dxeCalendarDayHeader_Moderno">Sat</td>
										</tr><tr>
											<td class="dxeCalendarWeekNumber_Moderno">14</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno dxeCalendarOtherMonth_Moderno">30</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">31</td><td class="dxeCalendarDay_Moderno">1</td><td class="dxeCalendarDay_Moderno">2</td><td class="dxeCalendarDay_Moderno">3</td><td class="dxeCalendarDay_Moderno">4</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">5</td>
										</tr><tr>
											<td class="dxeCalendarWeekNumber_Moderno">15</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">6</td><td class="dxeCalendarDay_Moderno">7</td><td class="dxeCalendarDay_Moderno">8</td><td class="dxeCalendarDay_Moderno">9</td><td class="dxeCalendarDay_Moderno">10</td><td class="dxeCalendarDay_Moderno">11</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">12</td>
										</tr><tr>
											<td class="dxeCalendarWeekNumber_Moderno">16</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">13</td><td class="dxeCalendarDay_Moderno dxeCalendarToday_Moderno">14</td><td class="dxeCalendarDay_Moderno">15</td><td class="dxeCalendarDay_Moderno">16</td><td class="dxeCalendarDay_Moderno">17</td><td class="dxeCalendarDay_Moderno">18</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">19</td>
										</tr><tr>
											<td class="dxeCalendarWeekNumber_Moderno">17</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">20</td><td class="dxeCalendarDay_Moderno">21</td><td class="dxeCalendarDay_Moderno">22</td><td class="dxeCalendarDay_Moderno">23</td><td class="dxeCalendarDay_Moderno">24</td><td class="dxeCalendarDay_Moderno">25</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">26</td>
										</tr><tr>
											<td class="dxeCalendarWeekNumber_Moderno">18</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno">27</td><td class="dxeCalendarDay_Moderno">28</td><td class="dxeCalendarDay_Moderno">29</td><td class="dxeCalendarDay_Moderno">30</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">1</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">2</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno dxeCalendarOtherMonth_Moderno">3</td>
										</tr><tr>
											<td class="dxeCalendarWeekNumber_Moderno">19</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno dxeCalendarOtherMonth_Moderno">4</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">5</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">6</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">7</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">8</td><td class="dxeCalendarDay_Moderno dxeCalendarOtherMonth_Moderno">9</td><td class="dxeCalendarDay_Moderno dxeCalendarWeekend_Moderno dxeCalendarOtherMonth_Moderno">10</td>
										</tr>
									</table></td>
								</tr><tr>
									<td id="MainContent_txtDODate_DDD_C_yc" class="dxFastNavGrid" style="display:none;"><table id="MainContent_txtDODate_DDD_C_yt" class="dxeCalendarFastNav_Moderno" style="height:100%;width:100%;border-collapse:separate;">
										<tr>
											<td class="dxeCalendarFastNavItemArea_Moderno" style="height:100%;width:100%;"><table id="MainContent_txtDODate_DDD_C_yt_n" style="height:100%;width:100%;border-collapse:separate;">
												<tr>
													<td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Jan</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Feb</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Mar</td><td class="dxeCalendarFastNavItem_Moderno">Apr</td>
												</tr><tr>
													<td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">May</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Jun</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Jul</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Aug</td>
												</tr><tr>
													<td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Sep</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Oct</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Nov</td><td class="dxeCalendarFastNavItem_Moderno dxeCalendarFastNavItemOtherPeriod_Moderno">Dec</td>
												</tr>
											</table></td>
										</tr>
									</table></td>
								</tr>
							</table></td>
						</tr><tr>
							<td id="MainContent_txtDODate_DDD_C_F" class="dxeCalendarFooter_Moderno"><button id="MainContent_txtDODate_DDD_C_BT" class="dxeCalendarButton_Moderno" type="button">Today</button><button id="MainContent_txtDODate_DDD_C_BC" class="dxeCalendarButton_Moderno" type="button">Clear</button></td>
						</tr>
					</table><script id="dxss_1871843269" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_txtDODate_DDD_C',[[['dxeCalendarButtonHover_Moderno'],[''],['BT','BC','BO','BCN','FNP_BO','FNP_BC']]]);
ASPx.AddPressedItems('MainContent_txtDODate_DDD_C',[[['dxeCalendarButtonPressed_Moderno'],[''],['BT','BC','BO','BCN','FNP_BO','FNP_BC']]]);
ASPx.AddDisabledItems('MainContent_txtDODate_DDD_C',[[['dxeDisabled_Moderno'],[''],['']],[['dxeDisabled_Moderno dxeButtonDisabled_Moderno'],[''],['BT','BC','BO','BCN','FNP_BO','FNP_BC']],[[''],[''],['PYC','PMC','NMC','NYC'],,[[{'spriteCssClass':'dxEditors_edtCalendarPrevYearDisabled_Moderno'}],[{'spriteCssClass':'dxEditors_edtCalendarPrevMonthDisabled_Moderno'}],[{'spriteCssClass':'dxEditors_edtCalendarNextMonthDisabled_Moderno'}],[{'spriteCssClass':'dxEditors_edtCalendarNextYearDisabled_Moderno'}]],['Img']]]);
ASPx.createControl(ASPxClientCalendar,'MainContent_txtDODate_DDD_C','',{'uniqueID':'ctl00$MainContent$txtDODate$DDD$C','scStates':2,'scPostfix':'Moderno','serverCurrentDate':new Date(2025,3,14,0,0,0,0),'visibleDate':new Date(2025,3,14,0,0,0,0),'fastNavRollbackTexts':['Back To Days', 'Back To Months', 'Back To Years'],'isDateEditCalendar':true},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}],'selection':[new Date(2025,3,14,0,0,0,0)]});

//-->
</script>
				</div>
			</div>
		</div>
	</div><script id="dxss_1524625228" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_txtDODate_DDD',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'MainContent_txtDODate_DDD','',{'uniqueID':'ctl00$MainContent$txtDODate$DDD','adjustInnerControlsSizeOnShow':false,'popupAnimationType':'slide','closeAction':'CloseButton','popupHorizontalAlign':'LeftSides','popupVerticalAlign':'Below'},{'Shown':function (s, e) { ASPx.DDBPCShown('MainContent_txtDODate', e); }});

//-->
</script><script id="dxss_452142700" type="text/javascript">
<!--
ASPx.AddHoverItems('MainContent_txtDODate',[[['dxeButtonEditButtonHover_Moderno'],[''],['B-1']]]);
ASPx.RemoveHoverItems('MainContent_txtDODate',[[['B-100']]]);
ASPx.AddPressedItems('MainContent_txtDODate',[[['dxeButtonEditButtonPressed_Moderno'],[''],['B-1']]]);
ASPx.RemovePressedItems('MainContent_txtDODate',[[['B-100']]]);
ASPx.createControl(ASPxClientDateEdit,'MainContent_txtDODate','',{'callBack':function(arg) { WebForm_DoCallback('ctl00$MainContent$txtDODate',arg,ASPx.Callback,'MainContent_txtDODate',ASPx.CallbackError,true); },'uniqueID':'ctl00$MainContent$txtDODate','stateObject':{'rawValue':'1744588800000'},'displayFormat':'{0:dd/MM/yyyy}','autoCompleteAttribute':{'name':'autocomplete','value':'off'},'outOfRangeWarningClassName':'dxeOutOfRWarn_Moderno dxeOutOfRWarnRight_Moderno','outOfRangeWarningMessages':['The date must be in the range {0}...{1}', 'The date must be greater than or equal to {0}', 'The date must be less than or equal to {0}'],'date':new Date(2025,3,14,0,0,0,0),'dateFormatter':ASPx.DateFormatter.Create('dd/MM/yyyy')},null,null,{'decorationStyles':[{'key':'F','className':'dxeFocused_Moderno','cssText':''}]});

//-->
</script>
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-2 col-xl-2">
                                        <div class="form-label">
                                            <span id="MainContent_lblCaptionDeliveryTime">Masa penghantaran</span>
                                            &nbsp; (hh:mm)
                               
                                        </div>
                                        <input name="ctl00$MainContent$txtDOTime" type="text" value="21:55" id="MainContent_txtDOTime" class="form-control" />
                                    </div>

                                </div>
                                <div class="row align-items-center">
                                    <div class="col-12">
                                        <span id="MainContent_lblCaptionDORemark" class="form-label">Pesanan Penghantaran/Catatan</span>
                                        <textarea name="ctl00$MainContent$txtDORemark" rows="2" cols="20" id="MainContent_txtDORemark" class="form-control" maxlength="200" style="z-index: 0">
</textarea>
                                    </div>
                                </div>

                            
</div>

                    </div>

                    <div class="tab-pane fade" id="MoreInfo">
                        <br />
                        <div class="row align-items-center">

                            <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                
                                
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                            </div>
                        </div>
                        <div class="row align-items-center">
                            <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                            </div>
                            <div class="col-12 col-sm-6 col-md-6 col-lg-4 col-xl-4">
                            </div>
                        </div>


                    </div>
                </div>

            </div>
        </div>



        <div class="card">
            <div class="card-body">
                <table id="MainContent_tblInvoiceSummary1" class="search-panel invoice-summary-left-table">
	<tr>
		<td width="125px">
                            <span id="MainContent_lblCaptionPart">Bahagian</span><br />
                            
                        </td>
		<td width="125px">
                            <span id="MainContent_lblCaptionService">Perkhidmatan</span><br />
                            
                        </td>
		<td width="125px">
                            <span id="MainContent_lblCaptionPayment">Pembayaran</span><br />
                            
                        </td>
		<td width="125px">
                            <span id="MainContent_lblCaptionBalance">Baki</span><br />
                            
                        </td>
		<td width="125px">
                            <span id="MainContent_lblCaptionChange">Ubah</span><br />
                        </td>
	</tr>
	<tr>
		<td>
                            <span id="MainContent_lblTotalPartInput" class="invoice-summary-value">0.00</span>
                        </td>
		<td>
                            <span id="MainContent_lblTotalServiceInput" class="invoice-summary-value">0.00</span>
                        </td>
		<td>
                            <span id="MainContent_lblTotalPaymentInput" class="invoice-summary-value">0.00</span>
                        </td>
		<td>
                            <span id="MainContent_lblBalanceInput" class="invoice-summary-value">0.00</span>
                        </td>
		<td>
                            <span id="MainContent_lblChange" class="invoice-summary-value" style="color:Purple;">0.00</span>
                        </td>
	</tr>
</table>


                <table id="MainContent_tblInvoiceSummary2" class="search-panel invoice-summary-right-table">
	<tr>
		<td>
                            <span id="MainContent_lblCaptionSubtotal">Jumlah Kecil</span>
                            :</td>
		<td>
                            <span id="MainContent_lblSubTotalInput">0.00</span>
                            
                        </td>
	</tr>
	<tr id="MainContent_trTax">
		<td>
                            <span id="MainContent_lblGSTValue" style="z-index: 0">Cukai perkhidmatan 0%: </span>
                        </td>
		<td>
                            <span id="MainContent_lblTotalServiceTaxInput" style="z-index: 0">0.00</span>
                            
                        </td>
	</tr>
	<tr>
		<td>
                            <span id="MainContent_lblCaptionDiscount1">Diskaun</span>
                            :</td>
		<td>
                            <input name="ctl00$MainContent$txtDiscountInput" type="text" id="MainContent_txtDiscountInput" class="text" style="width:70px;z-index: 0" />
                            
                        </td>
	</tr>
	<tr>
		<td>
                            <span id="MainContent_lblCaptionRounding">Pembundaran</span>
                            :</td>
		<td>
                            <input name="ctl00$MainContent$txtOtherChargeInput" type="text" id="MainContent_txtOtherChargeInput" class="text" style="width:70px;z-index: 0" />
                            
                            <input type="submit" name="ctl00$MainContent$btnCalculate" value="Kira semula" id="MainContent_btnCalculate" class="btn btn-dark" style="z-index: 0" />
                            <span id="MainContent_lblCalculateMsg" style="color:Red;font-weight:bold;z-index: 0"></span>
                        </td>
	</tr>
	<tr>
		<td class="invoice-summary-total">
                            <span id="MainContent_lblCaptionTotal">Jumlah</span>
                            :</td>
		<td class="invoice-summary-total">
                            <span id="MainContent_lblTotalInput">0.00</span>
                            
                        </td>
	</tr>
</table>

            </div>
        </div>

        <br />

        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div id="MainContent_tblPayment" class="col-12 d-lg-flex justify-content-start">
                        <div class="row">
                            <div class="col-xs-12 col-sm-3 col-lg-2">
                                <span id="MainContent_lblCaptionPaymentInfo" class="form-label">Maklumat Pembayaran</span>
                                <select name="ctl00$MainContent$ddlPaymentType" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$MainContent$ddlPaymentType\&#39;,\&#39;\&#39;)&#39;, 0)" id="MainContent_ddlPaymentType" class="form-control">
	<option selected="selected" value="1">Cash</option>
	<option value="2">Cheque</option>
	<option value="5">Credit Card - Giro</option>
	<option value="4">Credit Card - MASTER</option>
	<option value="3">Credit Card - VISA</option>
	<option value="9">Debit Card</option>
	<option value="7">Nets/Giro</option>
	<option value="11">Pay Later</option>
	<option value="6">Voucher</option>

</select>
                            </div>
                            <div class="col-xs-12 col-sm-3 col-lg-2">
                                <span id="MainContent_lblCaptionAmount" class="form-label">Jumlah</span>
                                <input name="ctl00$MainContent$txtPaymentAmount" type="text" id="MainContent_txtPaymentAmount" class="form-control" style="background-color:#FDFFBA;" />
                            </div>
                            <div class="col-xs-12 col-sm-3 col-lg-2">
                                <span id="MainContent_lblAccount" class="form-label" style="z-index: 0">Akaun</span>
                                <select name="ctl00$MainContent$ddlAccount" id="MainContent_ddlAccount" class="form-control" style="z-index: 0">
	<option selected="selected" value="35">CASH</option>
	<option value="67">PETTY CASH</option>

</select>
                            </div>
                            <div id="MainContent_DivInfo1" class="col-xs-12 col-sm-3 col-lg-2">
                                <div class="justify-content-start">
                                    <span id="MainContent_lblInfo1">Maklumat pembayaran 1</span>&nbsp;
                                    
                                </div>
                                <input name="ctl00$MainContent$txtInfo1" type="text" maxlength="50" id="MainContent_txtInfo1" class="form-control" />
                            </div>
                            <div id="MainContent_DivInfo2" class="col-xs-12 col-sm-3 col-lg-2">
                                <span id="MainContent_lblInfo2" class="form-label">Maklumat pembayaran 2</span>
                                <input name="ctl00$MainContent$txtInfo2" type="text" maxlength="50" id="MainContent_txtInfo2" class="form-control" />
                            </div>
                            <div class="col-xs-12 col-sm-3 col-lg-2" style="padding: 25px 0px 0px 15px;">
                                <input type="submit" name="ctl00$MainContent$btnAddPayment" value="Tambah" id="MainContent_btnAddPayment" class="btn btn-dark" />
                            </div>
                        </div>
                        <div class="row">

                        </div>
                        <div class="row">
                            <span id="MainContent_lblPaymentMsg" style="color:Red;font-weight:bold;"></span>
                        </div>
                    </div>
                    <div id="MainContent_tblPaymentDetail" class="col-12">
                        <div class="row">
                            <div class="col-12">
                                
                                <br />
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div style="padding-bottom: 70px"></div>
    </div>

    <div class="navbar fixed-bottom" style="background-color: #b1adad;">
        <div class="text-left">
            <table>
                <tr>
                    <td>
                        <input type="submit" name="ctl00$MainContent$btnSave" value="Simpan" onclick="javascript:disableButton();__doPostBack(&#39;ctl00$MainContent$btnSave&#39;,&#39;&#39;);" id="btnSave" accesskey="S" class="btn btn-dark custom-styling" />&nbsp;</td>

                    <td>
                        <div class="btn-group dropup">
                            <!--Split button dropdown.-->
                            <input type="submit" name="ctl00$MainContent$btnSavePrint" value="Cetak" onclick="javascript:disableButton();__doPostBack(&#39;ctl00$MainContent$btnSavePrint&#39;,&#39;&#39;);" id="btnSavePrint" accesskey="P" class="btn btn-dark custom-styling" />
                            
                            
                        </div>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <input type="submit" name="ctl00$MainContent$btnPrintDO" value="Cetak DO" onclick="javascript:disableButton();__doPostBack(&#39;ctl00$MainContent$btnPrintDO&#39;,&#39;&#39;);" id="btnPrintDO" accesskey="P" class="btn btn-dark custom-styling" />&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <input type="submit" name="ctl00$MainContent$btnPrintEmail" value="Print &amp; Email" onclick="return ConfirmSendEmail();" id="MainContent_btnPrintEmail" class="btn btn-dark custom-styling" />&nbsp;
                    </td>
                    <td>
                        <input type="submit" name="ctl00$MainContent$btnCancel" value="Keluar" id="MainContent_btnCancel" class="btn btn-dark custom-styling" />&nbsp;
                            <a id="btnSentWhatsApp" class="btn btn-dark custom-styling" href="javascript:__doPostBack(&#39;ctl00$MainContent$btnSentWhatsApp&#39;,&#39;&#39;)">
                                <i class="fab fa-whatsapp" style="color:greenyellow; font-size:16px;"></i>
                            </a>
                    </td>
                    <td>
                        
                        
                        
                        
                        &nbsp;</td>
                </tr>
            </table>
            
        </div>
        <div class="col">
            <span id="MainContent_lblMsg" style="color:Red;font-weight:bold;"></span>
        </div>
    </div>


    

                    </div>
                    
                </div>
            </div>

            <!-- Overlay -->
            <div class="layout-overlay layout-sidenav-toggle"></div>
        </div>

        <p id="dateTimeParam" style="display: none;">2025;04;14;21;55;51</p>

        <div id="pcLoading_PW-1" class="dxpcLite_Moderno dxpclW dxpc-mainDiv loader-dialog dxpc-shadow" style="width:200px;z-index:10000;display:none;visibility:hidden;">
	<div class="dxpc-contentWrapper">
		<div class="dxpc-content">
			
                    <center>
                        <div>
                            <img id="pcLoading_imgLoading" src="../Images/loading.gif" />
                        </div>
                    </center>
                
		</div>
	</div>
</div><div id="pcLoading_DXPWMB-1" class="dxpcModalBackLite_Moderno" style="background-color:Transparent;opacity:0;z-index:9999;">

</div><table id="pcLoading_LP" class="dxpcLoadingPanel_Moderno dxlpLoadingPanel_Moderno" style="left:0px;top:0px;z-index:30000;display:none;">
	<tr>
		<td class="dx" style="padding-right:0px;"><img class="dxlp-loadingImage dxlp-imgPosLeft" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="vertical-align:middle;" /></td><td class="dx" style="padding-left:0px;"><span id="pcLoading_TL">Loading&hellip;</span></td>
	</tr>
</table><div id="pcLoading_LD" class="dxpcLoadingDiv_Moderno dxlpLoadingDiv_Moderno dx-ft" style="left:0px;top:0px;z-index:29999;display:none;position:absolute;">

</div><script id="dxss_2035399347" type="text/javascript">
<!--
ASPx.AddHoverItems('pcLoading',[[['dxpc-closeBtnHover'],[''],['HCB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'pcLoading','',{'callBack':function(arg) { WebForm_DoCallback('ctl00$pcLoading',arg,ASPx.Callback,'pcLoading',ASPx.CallbackError,true); },'uniqueID':'ctl00$pcLoading','enableAnimation':false,'closeAction':'CloseButton','closeOnEscape':true,'popupHorizontalAlign':'WindowCenter','popupVerticalAlign':'WindowCenter','modal':true,'autoUpdatePosition':true});

//-->
</script>



        <div id="pcLogin_PW-1" class="dxpcLite_Moderno dxpclW" style="width:800px;z-index:10000;display:none;visibility:hidden;">
	<div class="dxpc-mainDiv dxpc-shadow">
		<div class="dxpc-header drag dxpc-withBtn" style="-webkit-user-select:none;">
			<div class="dxpc-closeBtn">
				<img class="dxWeb_pcCloseButton_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="Close" />
			</div><div class="dxpc-maximizeBtn">
				<img id="pcLogin_HMXB-1Img" class="dxWeb_pcMaximizeButton_Moderno" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="Maximize/Restore" />
			</div><div class="dxpc-headerContent">
				<span class="dxpc-headerText dx-vam">Feedback</span>
			</div><b class="dx-clear"></b>
		</div><div class="dxpc-contentWrapper">
			<div class="dxpc-content">
				
                    <div class="dxpnlControl_Moderno" id="pcLogin_Panel1" onkeypress="return ASPx.FireDefaultButton(event, &#39;btOK&#39;);">
					
                                <div class="dxflFormLayout_Moderno" id="pcLogin_Panel1_ASPxFormLayoutTop" style="height:100%;width:100%;">
						<table class="dxflGroup_Moderno dxflGroupSys dxflAGSys" style="border-collapse:separate;">
							<tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutTop_0" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                    <span class="dxeBase_Moderno" id="pcLogin_Panel1_ASPxFormLayoutTop_lblFeedbackTxtNote">Thanks for taking time to provide feedback. The information you provide will help us improve.</span>
                                                
								</div></td>
							</tr><tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutTop_1" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                    <span class="dxeBase_Moderno" id="pcLogin_Panel1_ASPxFormLayoutTop_lblFeedbackQsn">Which of the following areas would you like to provide feedback on? </span>
                                                
								</div></td>
							</tr>
						</table>
					</div><script id="dxss_125188885" type="text/javascript">
<!--
ASPx.createControl(ASPxClientFormLayout,'pcLogin_Panel1_ASPxFormLayoutTop','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutTop'});

//-->
</script>
                                <div class="dxflFormLayout_Moderno" id="pcLogin_Panel1_ASPxFormLayoutMid" style="height:100%;width:100%;">
						<table class="dxflGroup_Moderno dxflGroupSys dxflAGSys" style="border-collapse:separate;">
							<tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutMid_0" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflCheckBoxWithTextItemSys dxflItem_Moderno">
									
                                                    <table class="dxeBase_Moderno dxeTAR" id="pcLogin_Panel1_ASPxFormLayoutMid_chGeneral" style="height:0px;">
										<tr>
											<td class="dxichCellSys"><span class="dxWeb_edtCheckBoxUnchecked_Moderno dxICheckBox_Moderno dxichSys dx-not-acc"><span class="dxKBSW"><input id="pcLogin_Panel1_ASPxFormLayoutMid_chGeneral_S" class="dxAIFFE" name="ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chGeneral" value="I" type="text" readonly="readonly" style="opacity:0;width:0;height:0;background-color:transparent;display:block;margin:0;padding:0;border-width:0;" /></span></span></td><td class="dxichTextCellSys"><label>General</label></td>
										</tr>
									</table><script id="dxss_459477052" type="text/javascript">
<!--
ASPx.createControl(ASPxClientCheckBox,'pcLogin_Panel1_ASPxFormLayoutMid_chGeneral','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chGeneral','scStates':6,'scPostfix':'Moderno','imageProperties':{'4':['dxWeb_edtCheckBoxChecked_Moderno','dxWeb_edtCheckBoxUnchecked_Moderno'],'8':['dxWeb_edtCheckBoxCheckedDisabled_Moderno','dxWeb_edtCheckBoxUncheckedDisabled_Moderno']},'icbFocusedStyle':['dxICBFocused_Moderno','']},null,null,{'decorationStyles':[]});

//-->
</script>
                                                
								</div></td>
							</tr><tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutMid_1" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflCheckBoxWithTextItemSys dxflItem_Moderno">
									
                                                    <table class="dxeBase_Moderno dxeTAR" id="pcLogin_Panel1_ASPxFormLayoutMid_chProcess" style="height:0px;">
										<tr>
											<td class="dxichCellSys"><span class="dxWeb_edtCheckBoxUnchecked_Moderno dxICheckBox_Moderno dxichSys dx-not-acc"><span class="dxKBSW"><input id="pcLogin_Panel1_ASPxFormLayoutMid_chProcess_S" class="dxAIFFE" name="ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chProcess" value="I" type="text" readonly="readonly" style="opacity:0;width:0;height:0;background-color:transparent;display:block;margin:0;padding:0;border-width:0;" /></span></span></td><td class="dxichTextCellSys"><label>Process</label></td>
										</tr>
									</table><script id="dxss_510898276" type="text/javascript">
<!--
ASPx.createControl(ASPxClientCheckBox,'pcLogin_Panel1_ASPxFormLayoutMid_chProcess','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chProcess','scStates':6,'scPostfix':'Moderno','imageProperties':{'4':['dxWeb_edtCheckBoxChecked_Moderno','dxWeb_edtCheckBoxUnchecked_Moderno'],'8':['dxWeb_edtCheckBoxCheckedDisabled_Moderno','dxWeb_edtCheckBoxUncheckedDisabled_Moderno']},'icbFocusedStyle':['dxICBFocused_Moderno','']},null,null,{'decorationStyles':[]});

//-->
</script>
                                                
								</div></td>
							</tr><tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutMid_2" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflCheckBoxWithTextItemSys dxflItem_Moderno">
									
                                                    <table class="dxeBase_Moderno dxeTAR" id="pcLogin_Panel1_ASPxFormLayoutMid_chGUI" style="height:0px;">
										<tr>
											<td class="dxichCellSys"><span class="dxWeb_edtCheckBoxUnchecked_Moderno dxICheckBox_Moderno dxichSys dx-not-acc"><span class="dxKBSW"><input id="pcLogin_Panel1_ASPxFormLayoutMid_chGUI_S" class="dxAIFFE" name="ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chGUI" value="I" type="text" readonly="readonly" style="opacity:0;width:0;height:0;background-color:transparent;display:block;margin:0;padding:0;border-width:0;" /></span></span></td><td class="dxichTextCellSys"><label>User Interface / User Experience</label></td>
										</tr>
									</table><script id="dxss_1692660260" type="text/javascript">
<!--
ASPx.createControl(ASPxClientCheckBox,'pcLogin_Panel1_ASPxFormLayoutMid_chGUI','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chGUI','scStates':6,'scPostfix':'Moderno','imageProperties':{'4':['dxWeb_edtCheckBoxChecked_Moderno','dxWeb_edtCheckBoxUnchecked_Moderno'],'8':['dxWeb_edtCheckBoxCheckedDisabled_Moderno','dxWeb_edtCheckBoxUncheckedDisabled_Moderno']},'icbFocusedStyle':['dxICBFocused_Moderno','']},null,null,{'decorationStyles':[]});

//-->
</script>
                                                
								</div></td>
							</tr><tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutMid_3" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflCheckBoxWithTextItemSys dxflItem_Moderno">
									
                                                    <table class="dxeBase_Moderno dxeTAR" id="pcLogin_Panel1_ASPxFormLayoutMid_chReport" style="height:0px;">
										<tr>
											<td class="dxichCellSys"><span class="dxWeb_edtCheckBoxUnchecked_Moderno dxICheckBox_Moderno dxichSys dx-not-acc"><span class="dxKBSW"><input id="pcLogin_Panel1_ASPxFormLayoutMid_chReport_S" class="dxAIFFE" name="ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chReport" value="I" type="text" readonly="readonly" style="opacity:0;width:0;height:0;background-color:transparent;display:block;margin:0;padding:0;border-width:0;" /></span></span></td><td class="dxichTextCellSys"><label>Report</label></td>
										</tr>
									</table><script id="dxss_375330756" type="text/javascript">
<!--
ASPx.createControl(ASPxClientCheckBox,'pcLogin_Panel1_ASPxFormLayoutMid_chReport','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chReport','scStates':6,'scPostfix':'Moderno','imageProperties':{'4':['dxWeb_edtCheckBoxChecked_Moderno','dxWeb_edtCheckBoxUnchecked_Moderno'],'8':['dxWeb_edtCheckBoxCheckedDisabled_Moderno','dxWeb_edtCheckBoxUncheckedDisabled_Moderno']},'icbFocusedStyle':['dxICBFocused_Moderno','']},null,null,{'decorationStyles':[]});

//-->
</script>
                                                
								</div></td>
							</tr><tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutMid_4" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflCheckBoxWithTextItemSys dxflItem_Moderno">
									
                                                    <table class="dxeBase_Moderno dxeTAR" id="pcLogin_Panel1_ASPxFormLayoutMid_chOthers" style="height:0px;">
										<tr>
											<td class="dxichCellSys"><span class="dxWeb_edtCheckBoxUnchecked_Moderno dxICheckBox_Moderno dxichSys dx-not-acc"><span class="dxKBSW"><input id="pcLogin_Panel1_ASPxFormLayoutMid_chOthers_S" class="dxAIFFE" name="ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chOthers" value="I" type="text" readonly="readonly" style="opacity:0;width:0;height:0;background-color:transparent;display:block;margin:0;padding:0;border-width:0;" /></span></span></td><td class="dxichTextCellSys"><label>Others</label></td>
										</tr>
									</table><script id="dxss_467316226" type="text/javascript">
<!--
ASPx.createControl(ASPxClientCheckBox,'pcLogin_Panel1_ASPxFormLayoutMid_chOthers','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid$chOthers','scStates':6,'scPostfix':'Moderno','imageProperties':{'4':['dxWeb_edtCheckBoxChecked_Moderno','dxWeb_edtCheckBoxUnchecked_Moderno'],'8':['dxWeb_edtCheckBoxCheckedDisabled_Moderno','dxWeb_edtCheckBoxUncheckedDisabled_Moderno']},'icbFocusedStyle':['dxICBFocused_Moderno','']},null,null,{'decorationStyles':[]});

//-->
</script>
                                                
								</div></td>
							</tr><tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutMid_5" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflTextItemSys dxflItem_Moderno">
									
                                                    <span class="dxeBase_Moderno" id="pcLogin_Panel1_ASPxFormLayoutMid_lblFeedbackTxtNote1">We appreciate all your feedback. Please provide as much detail as possible so we can improve our experience for you.</span>
                                                
								</div></td>
							</tr><tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutMid_6" class="dxflGroupCell_Moderno"><table class="dxflCLLSys dxflItemSys dxflMemoItemSys dxflItem_Moderno" style="border-collapse:separate;">
									<tr>
										<td class="dxflHALSys dxflVATSys dxflCaptionCell_Moderno dxflCaptionCellSys"><em class="dxflRequired_Moderno">*</em></td><td class="dxflNestedControlCell_Moderno" style="width:100%;">
                                                    <table id="pcLogin_Panel1_ASPxFormLayoutMid_tbComment_ET" class="dxeValidStEditorTable dxeRoot_Moderno" style="width:100%;">
											<tr>
												<td id="pcLogin_Panel1_ASPxFormLayoutMid_tbComment_CC" class="dxeErrorFrame_Moderno dxeErrorFrameSys dxeNoBorderBottom dxeControlsCell_Moderno" style="font-size:12px;width:100%;"><table class="dxeMemoSys dxeMemo_Moderno" id="pcLogin_Panel1_ASPxFormLayoutMid_tbComment" style="height:100px;width:100%;border-collapse:separate;">
													<tr>
														<td style="width:100%;"><textarea class="dxeMemoEditArea_Moderno dxeMemoEditAreaSys" id="pcLogin_Panel1_ASPxFormLayoutMid_tbComment_I" name="ctl00$pcLogin$Panel1$ASPxFormLayoutMid$tbComment" onfocus="ASPx.EGotFocus(&#39;pcLogin_Panel1_ASPxFormLayoutMid_tbComment&#39;)" onblur="ASPx.ELostFocus(&#39;pcLogin_Panel1_ASPxFormLayoutMid_tbComment&#39;)" onchange="ASPx.EValueChanged(&#39;pcLogin_Panel1_ASPxFormLayoutMid_tbComment&#39;)" style="height:100px;width:100%;">Mendatory Field</textarea></td>
													</tr>
												</table></td>
											</tr><tr>
												<td id="pcLogin_Panel1_ASPxFormLayoutMid_tbComment_EC" class="dxeErrorCell_Moderno dxeErrorFrame_Moderno dxeErrorFrameSys dxeErrorCellSys dxeNoBorderTop" style="font-size:12px;padding-left:0px;visibility:hidden;white-space:nowrap;">Invalid value</td>
											</tr>
										</table><script id="dxss_1711879474" type="text/javascript">
<!--
ASPx.createControl(ASPxClientMemo,'pcLogin_Panel1_ASPxFormLayoutMid_tbComment','tbComment',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid$tbComment','scStates':6,'scPostfix':'Moderno','stateObject':{'rawValue':''},'validationGroup':'entryGroup','customValidationEnabled':true,'isValid':true,'errorText':'Invalid value','validationPatterns':[new ASPx.RequiredFieldValidationPattern('Comments required')],'causesValidation':true,'setFocusOnError':true,'isErrorFrameRequired':true,'errorDisplayMode':'t','autoResizeWithContainer':true,'nullText':'Mendatory Field','errorCellPosition':'Bottom','autoCompleteAttribute':{'name':'autocomplete','value':'off'}},null,null,{'decorationStyles':[{'key':'I','className':'dxeInvalid_Moderno','cssText':''},{'key':'F','className':'dxeFocused_Moderno','cssText':''},{'key':'N','className':'dxeNullText_Moderno','cssText':''}]});

//-->
</script>

                                                </td>
									</tr>
								</table></td>
							</tr><tr>
								<td id="pcLogin_Panel1_ASPxFormLayoutMid_7" class="dxflGroupCell_Moderno"><div class="dxflNestedControlCell_Moderno dxflCLLSys dxflItemSys dxflButtonItemSys dxflItem_Moderno" style="padding-top:19px;">
									
                                                    <div>
                                                        <button id='prevent-onclick-on-enter' style='display: none;' onclick='return false;' />
                                                    </div>

                                                    <div class="dxbButton_Moderno dxbButtonSys dxbTSys" id="pcLogin_Panel1_ASPxFormLayoutMid_btnSubmit" style="width:80px;float:left;margin-right:8px;-webkit-user-select:none;">
										<div class="dxb">
											<div class="dxb-hbc">
												<input id="pcLogin_Panel1_ASPxFormLayoutMid_btnSubmit_I" class="dxb-hb" value="Submit" type="submit" name="ctl00$pcLogin$Panel1$ASPxFormLayoutMid$btnSubmit" style="opacity:0.01;" />
											</div><span class="dx-vam">Submit</span>
										</div>
									</div><script id="dxss_1312136654" type="text/javascript">
<!--
ASPx.AddHoverItems('pcLogin_Panel1_ASPxFormLayoutMid_btnSubmit',[[['dxbButtonHover_Moderno'],[''],[''],['','TC']]]);
ASPx.AddPressedItems('pcLogin_Panel1_ASPxFormLayoutMid_btnSubmit',[[['dxbButtonPressed_Moderno'],[''],[''],['','TC']]]);
ASPx.AddDisabledItems('pcLogin_Panel1_ASPxFormLayoutMid_btnSubmit',[[['dxbDisabled_Moderno'],[''],[''],['','TC']]]);
ASPx.AddSelectedItems('pcLogin_Panel1_ASPxFormLayoutMid_btnSubmit',[[['dxbf'],[''],['CD']]]);
ASPx.createControl(ASPxClientButton,'pcLogin_Panel1_ASPxFormLayoutMid_btnSubmit','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid$btnSubmit','serverEvents':['Click'],'validationGroup':'entryGroup'},{'Click':function(s, e) { if(ASPxClientEdit.ValidateGroup('entryGroup') == true) pcLogin.Hide(); }});

//-->
</script>
                                                    <div class="dxbButton_Moderno dxbButtonSys dxbTSys" id="pcLogin_Panel1_ASPxFormLayoutMid_btnCancel" style="width:80px;float:left;margin-right:8px;-webkit-user-select:none;">
										<div class="dxb">
											<div class="dxb-hbc">
												<input id="pcLogin_Panel1_ASPxFormLayoutMid_btnCancel_I" class="dxb-hb" value="Cancel" type="submit" name="ctl00$pcLogin$Panel1$ASPxFormLayoutMid$btnCancel" style="opacity:0.01;" />
											</div><span class="dx-vam">Cancel</span>
										</div>
									</div><script id="dxss_2124366365" type="text/javascript">
<!--
ASPx.AddHoverItems('pcLogin_Panel1_ASPxFormLayoutMid_btnCancel',[[['dxbButtonHover_Moderno'],[''],[''],['','TC']]]);
ASPx.AddPressedItems('pcLogin_Panel1_ASPxFormLayoutMid_btnCancel',[[['dxbButtonPressed_Moderno'],[''],[''],['','TC']]]);
ASPx.AddDisabledItems('pcLogin_Panel1_ASPxFormLayoutMid_btnCancel',[[['dxbDisabled_Moderno'],[''],[''],['','TC']]]);
ASPx.AddSelectedItems('pcLogin_Panel1_ASPxFormLayoutMid_btnCancel',[[['dxbf'],[''],['CD']]]);
ASPx.createControl(ASPxClientButton,'pcLogin_Panel1_ASPxFormLayoutMid_btnCancel','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid$btnCancel'},{'Click':function(s, e) { pcLogin.Hide(); }});

//-->
</script>
                                                    <span class="dxeBase_Moderno" id="pcLogin_Panel1_ASPxFormLayoutMid_lblError"></span>

                                                
								</div></td>
							</tr>
						</table>
					</div><script id="dxss_717469355" type="text/javascript">
<!--
ASPx.createControl(ASPxClientFormLayout,'pcLogin_Panel1_ASPxFormLayoutMid','',{'uniqueID':'ctl00$pcLogin$Panel1$ASPxFormLayoutMid'});

//-->
</script>
                            
				</div>
                
			</div>
		</div>
	</div>
</div><div id="pcLogin_DXPWMB-1" class="dxpcModalBackLite_Moderno" style="z-index:9999;">

</div><table id="pcLogin_LP" class="dxpcLoadingPanel_Moderno dxlpLoadingPanel_Moderno" style="left:0px;top:0px;z-index:30000;display:none;">
	<tr>
		<td class="dx" style="padding-right:0px;"><img class="dxlp-loadingImage dxlp-imgPosLeft" src="/eMAXRNRBARAKAH/DXR.axd?r=1_121-ww8An" alt="" style="vertical-align:middle;" /></td><td class="dx" style="padding-left:0px;"><span id="pcLogin_TL">Loading&hellip;</span></td>
	</tr>
</table><div id="pcLogin_LD" class="dxpcLoadingDiv_Moderno dxlpLoadingDiv_Moderno dx-ft" style="left:0px;top:0px;z-index:29999;display:none;position:absolute;">

</div><script id="dxss_1493121575" type="text/javascript">
<!--
ASPx.AddHoverItems('pcLogin',[[['dxpc-closeBtnHover'],[''],['HCB-1']],[['dxpc-maximizeBtnHover'],[''],['HMXB-1']]]);
ASPx.AddSelectedItems('pcLogin',[[['dxpc-maximizeBtnChecked'],[''],['HMXB-1']]]);
ASPx.createControl(ASPxClientPopupControl,'pcLogin','',{'callBack':function(arg) { WebForm_DoCallback('ctl00$pcLogin',arg,ASPx.Callback,'pcLogin',ASPx.CallbackError,true); },'uniqueID':'ctl00$pcLogin','popupAnimationType':'fade','closeAnimationType':'fade','allowResize':true,'closeAction':'CloseButton','closeOnEscape':true,'popupHorizontalAlign':'WindowCenter','popupVerticalAlign':'WindowCenter','allowDragging':true,'modal':true,'width':800,'widthFromServer':true,'autoUpdatePosition':true,'isMaximizedInit':true},{'PopUp':function(s, e) { ASPxClientEdit.ClearGroup('entryGroup'); tbLogin.Focus(); }});

//-->
</script>
    
<script>document.getElementById('MainContent_txtInventoryCode').focus();</script>
<script type="text/javascript">
//<![CDATA[

var callBackFrameUrl='/eMAXRNRBARAKAH/WebResource.axd?d=I2nh46L_nowFTHLklZdIvBI0CwyT3yAdSJPH9VOfzoHIaI8oYG5VDd12eRqQzym0q9gDbK8RpoOf4pQf5yF7rG6cP-JjGDxR3q-YXPBduBw1&t=638240631755514788';
WebForm_InitCallback();
theForm.oldSubmit = theForm.submit;
theForm.submit = WebForm_SaveScrollPositionSubmit;

theForm.oldOnSubmit = theForm.onsubmit;
theForm.onsubmit = WebForm_SaveScrollPositionOnSubmit;

theForm.oldOnLoad = window.onload;
window.onload = WebForm_RestoreScrollPosition;
//]]>
</script>
</form>

    
    <script type="text/javascript" src='/eMAXRNRBARAKAH/Javascript/LiveTime.js'></script>
    

    
        <!-- Core scripts -->
        <script type="text/javascript" src='/eMAXRNRBARAKAH/Theme/AppWork/vendor/libs/popper/popper.js'></script>
        <script type="text/javascript" src='/eMAXRNRBARAKAH/Theme/AppWork/vendor/js/bootstrap.js'></script>
        <script type="text/javascript" src='/eMAXRNRBARAKAH/Theme/AppWork/vendor/js/sidenav.js'></script>

        <!-- Libs -->
        <script type="text/javascript" src='/eMAXRNRBARAKAH/Theme/AppWork/vendor/libs/perfect-scrollbar/perfect-scrollbar.js'></script>
        <script type="text/javascript" src='/eMAXRNRBARAKAH/Theme/AppWork/vendor/libs/chartjs/chartjs.js'></script>

        <!-- Demo -->
        <script type="text/javascript" src='/eMAXRNRBARAKAH/Theme/AppWork/js/demo.js'></script>
    

</body>
</html>
