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

        function scrollToBottom() {
            var myform = document.getElementById('contactForm');
            myform.style.display = 'none';
            window.scrollTo(0, document.body.scrollHeight);
        }

    </script>

    <div><br /></div>
    <div class="parallax-window" data-parallax="scroll" data-image-src="/Graphics/Images/sky-414199.jpg">
        <div class="col-md-12">
            <div class="overlayText">
                Hello World!
            </div>
        </div>
    </div>
    <div class="jumbotron">
        <h1 class="underlinedScript">Peter Martinez</h1>
        <h3 class="underlinedScript">Interactive Resume</h3>
    </div>

    <div>
        <%--About Me--%>
        <div class="row white-stripe">
            <div class="narrowMargin">
                <div class="col-md-4">
                    <a name="About" class="anchor"></a> <h1>About</h1>
                </div>
                <div class="col-md-8">
                    <h3>Career Background</h3>
                    <asp:Literal ID="literalCareerBackground" runat="server" Visible="true"></asp:Literal>
                    <h3>Career Objectives</h3>
                    <asp:Literal ID="literalCareerObjectives" runat="server" Visible="true"></asp:Literal>
                </div>
            </div>
        </div>
        <%--Education--%>
        <div class="row grey-stripe">
            <div class="narrowMargin">
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
                <div class="col-md-4 lightblueBackground" style="text-align: right;">
                    <a name="Education" class="anchor"></a><h1>Education</h1>
                </div>
            </div>
        </div>
        <%--Experience--%>
        <div class="row white-stripe">
            <div class="narrowMargin">
                <div class="col-md-4">
                    <a name="EmploymentExperience" class="anchor"></a><h1>Employment Experience</h1>
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
        </div>
        <%--Project Experience--%>
        <div class="row grey-stripe">
            <div class="narrowMargin">
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
                    <a name="ProjectExperience" class="anchor"></a><h1>Project Experience</h1>
                </div>
            </div>
        </div>
        <%--Skills--%>
        <div class="row white-stripe">
            <div class="narrowMargin">
                <div class="col-md-4">
                    <a name="Skills" class="anchor"></a><h1>Skills</h1>
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
                        <h3>Deployment Environments</h3>
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
        </div>
        <%--Contact--%>
        <div class="row grey-stripe">
            <div class="narrowMargin">
                <div class="col-md-8">
                    <div id="contactForm"> <%--<runat="server">--%>
                        <div class="row">
                            <div class="col-md-12">
                                <h4>Peter Martinez &nbsp; <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> &nbsp; <a href="mailto:peter@gb2gitsolutions.com" class="hyperlinkReverseColors">peter@gb2gitsolutions.com</a> &nbsp; <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> &nbsp; <a href="tel:1+6024196893" class="hyperlinkReverseColors">602.419.6893</a></h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="labelName" runat="server" Text="*Name:" for="usr" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxName" runat="server" MaxLength="75" placeholder="first and last name" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="textboxName" ErrorMessage="* Name is required" ValidationGroup="vsMessage" SetFocusOnError="true" CssClass="errorMessage" Display="Static"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="labelCompany" runat="server" Text="Company:" for="usr" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxCompany" runat="server" MaxLength="75" placeholder="company name if applicable" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <asp:Label ID="labelEmail" runat="server" Text="*Email:" for="usr" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxEmail" runat="server" MaxLength="75" placeholder="email address" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="textboxEmail" ErrorMessage="* An email address is required." ValidationGroup="vsMessage" SetFocusOnError="true" CssClass="errorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="textboxEmail" ErrorMessage="* Invalid email" ValidationGroup="vsMessage" SetFocusOnError="true" CssClass="errorMessage" Display="Static" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="labelTelephone" runat="server" Text="Phone Number:" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxPhone" runat="server" MaxLength="75" placeholder="555-555-5555" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="textboxPhone" ErrorMessage="* Invalid phone number" ValidationGroup="vsMessage" SetFocusOnError="true" CssClass="errorMessage" Display="Static" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Label ID="labelComment" runat="server" Text="*Comment or Question:" CssClass="formBlue"></asp:Label>
                                <asp:TextBox ID="textboxComment" runat="server" TextMode="MultiLine" Rows="5" CssClass="form-control" placeholder="Your comments or questions"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvComment" runat="server" ControlToValidate="textboxComment" ErrorMessage="* A comment or question is required" SetFocusOnError="true" ValidationGroup="vsMessage" CssClass="errorMessage" Display="Static"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <%--<asp:ValidationSummary ID="vsMessage" runat="server" DisplayMode="List" ShowValidationErrors="true" CssClass="errorMessage" ValidationGroup="vsMessage" HeaderText="Validation Errors:" />--%>
                                <asp:Button ID="buttonSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="buttonSubmit_Click" ValidationGroup="vsMessage" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" id="thankYou">
                            <asp:Literal ID="literalThankYou" runat="server"></asp:Literal>
                        </div>
                    </div>
                </div>
                <div class="col-md-4" style="text-align: right;">
                    <a name="Contact" class="anchor"></a><h1>Contact</h1>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
