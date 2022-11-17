view: view1 {
  derived_table: {
    sql: select country_region from covid19 ;;
  }

  dimension: country_region {
    type: string
    primary_key: yes
    sql: ${country_region} ;;
    html:
          {% if state._value == "California" %}
          &lt;img src="https://upload.wikimedia.org/wikipedia/commons/0/01/Flag_of_California.svg" height="170" width="255"&gt;
          {% elsif state._value == "New York" %}
          &lt;img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_New_York.svg/1200px-Flag_of_New_York.svg.png" height="170" width="255"&gt;
          {% elsif state._value == "Colorado" %}
          &lt;img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Flag_of_Colorado.svg/255px-Flag_of_Colorado.svg.png" height="170" width="255"&gt;
          {% elsif state._value == "Illinois"%}
          &lt;img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Illinois.svg/1200px-Flag_of_Illinois.svg.png" height="170" width="255"&gt;
          {% else %}
          &lt;img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="170" width="170"&gt;
          {% endif %} ;;
  }


}
