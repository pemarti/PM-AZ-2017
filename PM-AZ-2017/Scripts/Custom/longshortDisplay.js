function longshortView(parentTopic, displayFormat) {

    //determine if action is to display long or short information
    if (parentTopic !== undefined) {
        var topic = parentTopic;
        if (displayFormat !== undefined) {
            if (displayFormat == 'short') {
                var regformat = 'short';
                var invformat = 'long';

                var regelement = document.getElementById('div' + parentTopic + regformat);
                var invelement = document.getElementById('div' + parentTopic + invformat);
                regelement.style.display = 'none'
                invelement.style.display = 'block';
                invelement.focus();

            } else if (displayFormat == 'long') {
                var regformat = 'long';
                var invformat = 'short';

                var regelement = document.getElementById('div' + parentTopic + regformat);
                var invelement = document.getElementById('div' + parentTopic + invformat);
                regelement.style.display = 'none';
                invelement.style.display = 'block';
                invelement.focus();
            } else {
                alert("Dude!");
            }
        }
    }
}