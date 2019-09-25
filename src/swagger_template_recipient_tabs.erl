-module(swagger_template_recipient_tabs).

-export([encode/1]).

-export_type([swagger_template_recipient_tabs/0]).

-type swagger_template_recipient_tabs() ::
    #{ 'approveTabs' => list(),
       'checkboxTabs' => list(),
       'commentThreadTabs' => list(),
       'companyTabs' => list(),
       'dateSignedTabs' => list(),
       'dateTabs' => list(),
       'declineTabs' => list(),
       'emailAddressTabs' => list(),
       'emailTabs' => list(),
       'envelopeIdTabs' => list(),
       'firstNameTabs' => list(),
       'formulaTabs' => list(),
       'fullNameTabs' => list(),
       'initialHereTabs' => list(),
       'lastNameTabs' => list(),
       'listTabs' => list(),
       'notarizeTabs' => list(),
       'noteTabs' => list(),
       'numberTabs' => list(),
       'polyLineOverlayTabs' => list(),
       'radioGroupTabs' => list(),
       'signerAttachmentTabs' => list(),
       'signHereTabs' => list(),
       'smartSectionTabs' => list(),
       'ssnTabs' => list(),
       'tabGroups' => list(),
       'textTabs' => list(),
       'titleTabs' => list(),
       'viewTabs' => list(),
       'zipTabs' => list()
     }.

encode(#{ 'approveTabs' := ApproveTabs,
          'checkboxTabs' := CheckboxTabs,
          'commentThreadTabs' := CommentThreadTabs,
          'companyTabs' := CompanyTabs,
          'dateSignedTabs' := DateSignedTabs,
          'dateTabs' := DateTabs,
          'declineTabs' := DeclineTabs,
          'emailAddressTabs' := EmailAddressTabs,
          'emailTabs' := EmailTabs,
          'envelopeIdTabs' := EnvelopeIdTabs,
          'firstNameTabs' := FirstNameTabs,
          'formulaTabs' := FormulaTabs,
          'fullNameTabs' := FullNameTabs,
          'initialHereTabs' := InitialHereTabs,
          'lastNameTabs' := LastNameTabs,
          'listTabs' := ListTabs,
          'notarizeTabs' := NotarizeTabs,
          'noteTabs' := NoteTabs,
          'numberTabs' := NumberTabs,
          'polyLineOverlayTabs' := PolyLineOverlayTabs,
          'radioGroupTabs' := RadioGroupTabs,
          'signerAttachmentTabs' := SignerAttachmentTabs,
          'signHereTabs' := SignHereTabs,
          'smartSectionTabs' := SmartSectionTabs,
          'ssnTabs' := SsnTabs,
          'tabGroups' := TabGroups,
          'textTabs' := TextTabs,
          'titleTabs' := TitleTabs,
          'viewTabs' := ViewTabs,
          'zipTabs' := ZipTabs
        }) ->
    #{ 'approveTabs' => ApproveTabs,
       'checkboxTabs' => CheckboxTabs,
       'commentThreadTabs' => CommentThreadTabs,
       'companyTabs' => CompanyTabs,
       'dateSignedTabs' => DateSignedTabs,
       'dateTabs' => DateTabs,
       'declineTabs' => DeclineTabs,
       'emailAddressTabs' => EmailAddressTabs,
       'emailTabs' => EmailTabs,
       'envelopeIdTabs' => EnvelopeIdTabs,
       'firstNameTabs' => FirstNameTabs,
       'formulaTabs' => FormulaTabs,
       'fullNameTabs' => FullNameTabs,
       'initialHereTabs' => InitialHereTabs,
       'lastNameTabs' => LastNameTabs,
       'listTabs' => ListTabs,
       'notarizeTabs' => NotarizeTabs,
       'noteTabs' => NoteTabs,
       'numberTabs' => NumberTabs,
       'polyLineOverlayTabs' => PolyLineOverlayTabs,
       'radioGroupTabs' => RadioGroupTabs,
       'signerAttachmentTabs' => SignerAttachmentTabs,
       'signHereTabs' => SignHereTabs,
       'smartSectionTabs' => SmartSectionTabs,
       'ssnTabs' => SsnTabs,
       'tabGroups' => TabGroups,
       'textTabs' => TextTabs,
       'titleTabs' => TitleTabs,
       'viewTabs' => ViewTabs,
       'zipTabs' => ZipTabs
     }.