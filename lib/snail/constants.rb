# coding: utf-8

class Snail
  # based on http://www.columbia.edu/kermit/postal.html#index, which is in turn based on
  # the USPS International Mailing Manual. See also http://www.25thandclement.com/~william/USPS_ICL.html.
  USPS_COUNTRIES = [
    'Afghanistan',
    'Albania',
    'Algeria',
    'Andorra',
    'Angola',
    'Anguilla',
    'Antigua and Barbuda',
    'Argentina',
    'Armenia',
    'Aruba',
    'Ascension',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Bahamas',
    'Bahrain',
    'Bangladesh',
    'Barbados',
    'Belarus',
    'Belgium',
    'Belize',
    'Benin',
    'Bermuda',
    'Bhutan',
    'Bolivia',
    'Bosnia and Herzegovina',
    'Botswana',
    'Brazil',
    'British Virgin Islands',
    'Brunei Darussalam',
    'Bulgaria',
    'Burkina Faso',
    'Burundi',
    'Cambodia',
    'Cameroon',
    'Canada',
    'Canary Islands',
    'Cape Verde',
    'Cayman Islands',
    'Central African Republic',
    'Chad',
    'Channel Islands',
    'Chile',
    'China',
    'Colombia',
    'Comoros',
    'Costa Rica',
    'CÔte D\'ivoire',
    'Croatia',
    'Cuba',
    'Curacao',
    'Cyprus',
    'Czech Republic',
    'Democratic Republic of the Congo',
    'Denmark',
    'Djibouti',
    'Dominica',
    'Dominican Republic',
    'East Timor',
    'Ecuador',
    'Egypt',
    'El Salvador',
    'England',
    'Equatorial Guinea',
    'Eritrea',
    'Estonia',
    'Ethiopia',
    'Falkland Islands',
    'Faroe Islands',
    'Fiji',
    'Finland',
    'France',
    'French Guiana',
    'French Polynesia',
    'Gabon',
    'Gambia',
    'Georgia',
    'Germany',
    'Ghana',
    'Gibraltar',
    'Greece',
    'Greenland',
    'Grenada',
    'Guadeloupe',
    'Guatemala',
    'Guinea',
    'Guinea-Bissau',
    'Guyana',
    'Haiti',
    'Honduras',
    'Hong Kong',
    'Hungary',
    'Iceland',
    'India',
    'Indonesia',
    'Iran',
    'Iraq',
    'Ireland',
    'Isle of Man',
    'Israel',
    'Italy',
    'Jamaica',
    'Japan',
    'Jordan',
    'Kazakhstan',
    'Kenya',
    'Kiribati',
    'Korea',
    'Kosovo',
    'Kuwait',
    'Kyrgyzstan',
    'Laos',
    'Latvia',
    'Lebanon',
    'Lesotho',
    'Liberia',
    'Libya',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macao',
    'Macedonia',
    'Madagascar',
    'Malawi',
    'Malaysia',
    'Maldives',
    'Mali',
    'Malta',
    'Martinique',
    'Mauritania',
    'Mauritius',
    'Mayotte',
    'Mexico',
    'Moldova',
    'Monaco',
    'Mongolia',
    'Montenegro',
    'Montserrat',
    'Morocco',
    'Mozambique',
    'Myanmar',
    'Namibia',
    'Nauru',
    'Nepal',
    'Netherlands',
    'Netherlands Antilles',
    'New Caledonia',
    'New Zealand',
    'Nicaragua',
    'Niger',
    'Nigeria',
    'North Korea',
    'Northern Ireland',
    'Norway',
    'Oman',
    'Pakistan',
    'Palestinian Territory',
    'Panama',
    'Papua New Guinea',
    'Paraguay',
    'Peru',
    'Philippines',
    'Pitcairn Island',
    'Poland',
    'Portugal',
    'Qatar',
    'Republic of the Congo',
    'Reunion',
    'Romania',
    'Russia',
    'Rwanda',
    'Saint Helena',
    'Saint Kitts and Nevis',
    'Saint Lucia',
    'Saint Pierre and Miquelon',
    'Saint Vincent and the Grenadines',
    'San Marino',
    'Sao Tome and Principe',
    'Saudi Arabia',
    'Scotland',
    'Senegal',
    'Serbia',
    'Seychelles',
    'Sierra Leone',
    'Singapore',
    'Slovak Republic',
    'Slovenia',
    'Solomon Islands',
    'Somalia',
    'South Africa',
    'South Georgia',
    'South Sudan',
    'Spain',
    'Sri Lanka',
    'Sudan',
    'Suriname',
    'Swaziland',
    'Sweden',
    'Switzerland',
    'Syria',
    'Taiwan',
    'Tajikistan',
    'Tanzania',
    'Thailand',
    'Togo',
    'Tonga',
    'Trinidad and Tobago',
    'Tristan da Cunha',
    'Tunisia',
    'Turkey',
    'Turkmenistan',
    'Turks and Caicos Islands',
    'Tuvalu',
    'Uganda',
    'Ukraine',
    'United Arab Emirates',
    'United Kingdom',
    'Uruguay',
    'USA',
    'Uzbekistan',
    'Vanuatu',
    'Vatican City',
    'Venezuela',
    'Vietnam',
    'Wales',
    'Wallis and Futuna Islands',
    'Western Samoa',
    'Western Sahara',
    'Yemen',
    'Zambia',
    'Zimbabwe'
  ]

  REGIONS = {
    # see http://en.wikipedia.org/wiki/Postcodes_in_Australia#Australia_States_and_territories
    :au => {
      "Australian Capital Territory" => "ACT",
      "New South Wales" => "NSW",
      "Victoria" => "VIC",
      "Queensland" => "QLD",
      "South Australia" => "SA",
      "Western Australia" => "WA",
      "Tasmania" => "TAS",
      "Northern Territory" => "NT"
    },
    # see http://en.wikipedia.org/wiki/Canadian_subnational_postal_abbreviations
    :ca => {
      "Alberta" => "AB",
      "British Columbia" => "BC",
      "Manitoba" => "MB",
      "New Brunswick" => "NB",
      "Newfoundland and Labrador" => "NL",
      "Nova Scotia" => "NS",
      "Northwest Territories" => "NT",
      "Nunavut" => "NU",
      "Ontario" => "ON",
      "Prince Edward Island" => "PE",
      "Quebec" => "QC",
      "Saskatchewan" => "SK",
      "Yukon" => "YT"
    },
    # see http://www.columbia.edu/kermit/postal.html#usa
    # and http://www.usps.com/ncsc/lookups/usps_abbreviations.html
    :us => {
      "Alabama" => "AL",
      "Alaska" => "AK",
      "Arizona" => "AZ",
      "Arkansas" => "AR",
      "California" => "CA",
      "Colorado" => "CO",
      "Connecticut" => "CT",
      "Delaware" => "DE",
      "District Of Columbia" => "DC",
      "Florida" => "FL",
      "Georgia" => "GA",
      "Hawaii" => "HI",
      "Idaho" => "ID",
      "Illinois" => "IL",
      "Indiana" => "IN",
      "Iowa" => "IA",
      "Kansas" => "KS",
      "Kentucky" => "KY",
      "Louisiana" => "LA",
      "Maine" => "ME",
      "Maryland" => "MD",
      "Massachusetts" => "MA",
      "Michigan" => "MI",
      "Minnesota" => "MN",
      "Mississippi" => "MS",
      "Missouri" => "MO",
      "Montana" => "MT",
      "Nebraska" => "NE",
      "Nevada" => "NV",
      "New Hampshire" => "NH",
      "New Jersey" => "NJ",
      "New Mexico" => "NM",
      "New York" => "NY",
      "North Carolina" => "NC",
      "North Dakota" => "ND",
      "Ohio" => "OH",
      "Oklahoma" => "OK",
      "Oregon" => "OR",
      "Pennsylvania" => "PA",
      "Rhode Island" => "RI",
      "South Carolina" => "SC",
      "South Dakota" => "SD",
      "Tennessee" => "TN",
      "Texas" => "TX",
      "Utah" => "UT",
      "Vermont" => "VT",
      "Virginia" => "VA",
      "Washington" => "WA",
      "West Virginia" => "WV",
      "Wisconsin" => "WI",
      "Wyoming" => "WY",

      # These are not states exactly, but they are addressed as states through USA
      "American Samoa" => "AS",
      "Federated States Of Micronesia" => "FM",
      "Guam" => "GU",
      "Marshall Islands" => "MH",
      "Northern Mariana Islands" => "MP",
      "Palau" => "PW",
      "Puerto Rico" => "PR",
      "Virgin Islands" => "VI",
      "Armed Forces Africa" => "AE",
      "Armed Forces Americas (Except Canada)" => "AA",
      "Armed Forces Canada" => "AE",
      "Armed Forces Europe" => "AE",
      "Armed Forces Middle East" => "AE",
      "Armed Forces Pacific" => "AP",
    }
  }


  # Deprecated
  USA_STATES   = REGIONS[:us]
  CA_PROVINCES = REGIONS[:ca]
  AU_REGIONS   = REGIONS[:au]


end
