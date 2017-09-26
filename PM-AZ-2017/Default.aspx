<%@ Page Title="Peter Martinez" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PM_AZ_2017._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--Shrink the logo on scroll--%>
    <script>
        $(window).scroll(function () {
            if ($(".navbar").offset().top > 65) {
                $('#imageLogo').attr('height', '55');
            } else {
                $('#imageLogo').attr('height', '95');
            }
        });
    </script>

    <div><br /></div>
    <div class="parallax-window" data-parallax="scroll" data-image-src="/Graphics/Images/sky-414199.jpg"></div>
    <div class="jumbotron">
        <h1 class="underlinedScript">Peter Martinez</h1>
        <h3 class="underlinedScript">Interactive Resume</h3>
    </div>

    <div class="narrowPage">
        <%--About Me--%>
        <div class="row white-stripe">
            <div class="col-md-4">
                <a name="About" class="anchor"></a> <h1 class="underlinedScript">About</h1>
            </div>
            <div class="col-md-8">
                <h3>Background</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dignissim nisi, eget mollis dolor. Vivamus non erat nec nulla congue sollicitudin quis et elit. Sed mattis lorem purus, id aliquet dui accumsan non. Morbi gravida massa quis felis mollis hendrerit. Vivamus pulvinar turpis ut tempus sodales. Etiam sed mauris feugiat, rutrum orci nec, faucibus ante. Vestibulum pharetra vitae tortor non rutrum. Proin tellus massa, scelerisque ac elit nec, porttitor eleifend urna.
                </p>
                <h3>Objectives</h3>
                <p>
                    Aliquam sodales tempor ex, nec feugiat diam iaculis in. Sed ut nunc id lectus fermentum scelerisque. Curabitur tristique justo sit amet augue condimentum, vel ultricies ante porttitor. Nulla id nulla mattis dolor interdum posuere. Nullam sed faucibus enim. Maecenas eleifend nibh id dolor vehicula ornare. Vestibulum ac consequat mi. Nam convallis maximus urna, in eleifend elit euismod vitae. Donec sit amet diam nisl. In hac habitasse platea dictumst. Etiam lobortis eget erat non condimentum. Maecenas malesuada justo vel dolor rhoncus tincidunt.
                </p>
            </div>
        </div>
        <%--Education--%>
        <div class="row grey-stripe">
            <div class="col-md-8">
                <h3>Northern Arizona Univesity</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dignissim nisi, eget mollis dolor. Vivamus non erat nec nulla congue sollicitudin quis et elit. Sed mattis lorem purus, id aliquet dui accumsan non. Morbi gravida massa quis felis mollis hendrerit. Vivamus pulvinar turpis ut tempus sodales. Etiam sed mauris feugiat, rutrum orci nec, faucibus ante. Vestibulum pharetra vitae tortor non rutrum. Proin tellus massa, scelerisque ac elit nec, porttitor eleifend urna.
                </p>
                <h3>Arizona State University</h3>
                <p>
                    Aliquam sodales tempor ex, nec feugiat diam iaculis in. Sed ut nunc id lectus fermentum scelerisque. Curabitur tristique justo sit amet augue condimentum, vel ultricies ante porttitor. Nulla id nulla mattis dolor interdum posuere. Nullam sed faucibus enim. Maecenas eleifend nibh id dolor vehicula ornare. Vestibulum ac consequat mi. Nam convallis maximus urna, in eleifend elit euismod vitae. Donec sit amet diam nisl. In hac habitasse platea dictumst. Etiam lobortis eget erat non condimentum. Maecenas malesuada justo vel dolor rhoncus tincidunt.
                </p>
            </div>
            <div class="col-md-4" style="text-align: right;">
                <a name="Education" class="anchor"></a><h1 class="underlinedScript">Education</h1>
            </div>
        </div>
        <%--Experience--%>
        <div class="row white-stripe">
            <div class="col-md-4">
                <a name="EmploymentExperience" class="anchor"></a><h1 class="underlinedScript">Employment Experience</h1>
            </div>
            <div class="col-md-8">
                <h3>GB2G IT Solutions, LLC</h3>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sed dignissim nisi, eget mollis dolor. Vivamus non erat nec nulla congue sollicitudin quis et elit. Sed mattis lorem purus, id aliquet dui accumsan non. Morbi gravida massa quis felis mollis hendrerit. Vivamus pulvinar turpis ut tempus sodales. Etiam sed mauris feugiat, rutrum orci nec, faucibus ante. Vestibulum pharetra vitae tortor non rutrum. Proin tellus massa, scelerisque ac elit nec, porttitor eleifend urna.
                </p>
                <h3>URS Corporation</h3>
                <p>
                    Aliquam sodales tempor ex, nec feugiat diam iaculis in. Sed ut nunc id lectus fermentum scelerisque. Curabitur tristique justo sit amet augue condimentum, vel ultricies ante porttitor. Nulla id nulla mattis dolor interdum posuere. Nullam sed faucibus enim. Maecenas eleifend nibh id dolor vehicula ornare. Vestibulum ac consequat mi. Nam convallis maximus urna, in eleifend elit euismod vitae. Donec sit amet diam nisl. In hac habitasse platea dictumst. Etiam lobortis eget erat non condimentum. Maecenas malesuada justo vel dolor rhoncus tincidunt.
                </p>
                <h3>City of Flagstaff, Arizona</h3>
                <p>
                    Aliquam sodales tempor ex, nec feugiat diam iaculis in. Sed ut nunc id lectus fermentum scelerisque. Curabitur tristique justo sit amet augue condimentum, vel ultricies ante porttitor. Nulla id nulla mattis dolor interdum posuere. Nullam sed faucibus enim. Maecenas eleifend nibh id dolor vehicula ornare. Vestibulum ac consequat mi. Nam convallis maximus urna, in eleifend elit euismod vitae. Donec sit amet diam nisl. In hac habitasse platea dictumst. Etiam lobortis eget erat non condimentum. Maecenas malesuada justo vel dolor rhoncus tincidunt.
                </p>
            </div>
        </div>
        <%--Project Experience--%>
        <div class="row grey-stripe">
            <div class="col-md-8">
                <h3>Typical Database Application Project</h3>
                <p>
                    Aliquam sodales tempor ex, nec feugiat diam iaculis in. Sed ut nunc id lectus fermentum scelerisque. Curabitur tristique justo sit amet augue condimentum, vel ultricies ante porttitor. Nulla id nulla mattis dolor interdum posuere. Nullam sed faucibus enim. Maecenas eleifend nibh id dolor vehicula ornare. Vestibulum ac consequat mi. Nam convallis maximus urna, in eleifend elit euismod vitae. Donec sit amet diam nisl. In hac habitasse platea dictumst. Etiam lobortis eget erat non condimentum. Maecenas malesuada justo vel dolor rhoncus tincidunt.
                </p>
                <h3>Typical Simple Website Project</h3>
                <p>
                    Aliquam sodales tempor ex, nec feugiat diam iaculis in. Sed ut nunc id lectus fermentum scelerisque. Curabitur tristique justo sit amet augue condimentum, vel ultricies ante porttitor. Nulla id nulla mattis dolor interdum posuere. Nullam sed faucibus enim. Maecenas eleifend nibh id dolor vehicula ornare. Vestibulum ac consequat mi. Nam convallis maximus urna, in eleifend elit euismod vitae. Donec sit amet diam nisl. In hac habitasse platea dictumst. Etiam lobortis eget erat non condimentum. Maecenas malesuada justo vel dolor rhoncus tincidunt.
                </p>
            </div>
            <div class="col-md-4" style="text-align: right;">
                <a name="ProjectExperience" class="anchor"></a><h1 class="underlinedScript">Project Experience</h1>
            </div>
        </div>
        <%--Skills--%>
        <div class="row white-stripe">
            <div class="col-md-4">
                <a name="Skills" class="anchor"></a><h1 class="underlinedScript">Skills</h1>
            </div>
            <div class="col-md-8">
                <div class="col-md-6">
                    <h3>Programming</h3>
                    <ul class="checkMark">
                        <li>C#</li>
                        <li>VB.Net</li>
                        <li>JavaScript</li>
                    </ul>
                    <h3>Database</h3>
                    <ul class="checkMark">
                        <li>MS SQL Server</li>
                        <li>MS Access</li>
                        <li>MySQL</li>
                    </ul>
                </div>
                <div class="col-md-6">
                    <h3>Hosting Environments</h3>
                    <ul class="checkMark">
                        <li>Azure</li>
                        <li>Plesk</li>
                        <li>Cpanel</li>
                    </ul>
                    <h3>Other Web Skills</h3>
                    <ul class="checkMark">
                        <li>HTML</li>
                        <li>CSS</li>
                        <li>Bootstrap</li>
                        <li>JQuery</li>
                        <li>JQueryUI</li>
                    </ul>
                </div>
            </div>
        </div>
        <%--Contact--%>
        <div class="row grey-stripe">
            <div class="col-md-8">
                <asp:Label ID="labelName" runat="server" Text="Name:" for="usr" CssClass="formBlue"></asp:Label>
                <asp:TextBox ID="textboxName" runat="server" MaxLength="75" placeholder="first and last name" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="textboxName" Display="Dynamic" SetFocusOnError="true" CssClass="errorMessage"></asp:RequiredFieldValidator>
                <asp:Label ID="labelCompany" runat="server" Text="Company:" for="usr" CssClass="formBlue"></asp:Label>
                <asp:TextBox ID="textboxCompany" runat="server" MaxLength="75" placeholder="company name if applicable" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCompany" runat="server" ControlToValidate="textboxCompany" Display="Dynamic" SetFocusOnError="true" CssClass="errorMessage"></asp:RequiredFieldValidator>
                <asp:Label ID="labelEmail" runat="server" Text="Email:" for="usr" CssClass="formBlue"></asp:Label>
                <asp:TextBox ID="textboxEmail" runat="server" MaxLength="75" placeholder="email address" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="textboxEmail" Display="Dynamic" SetFocusOnError="true" CssClass="errorMessage"></asp:RequiredFieldValidator>
                <asp:TextBox ID="textboxComment" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="buttonSubmit" runat="server" Text="Submit" />
            </div>
            <div class="col-md-4" style="text-align: right;">
                <a name="Contact" class="anchor"></a><h1 class="underlinedScript">Contact</h1>
            </div>
        </div>

    </div>

</asp:Content>
