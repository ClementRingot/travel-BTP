# Round trip to the SAP BTP ABAP trial (D99)

Fixture `fixtures\travel`, variants `draft`, `trial`, suffix `CRG`:
every object of this repository ends with `CRG`, because the trial is shared by
its users. Expected: every object activates without error.

1. Push this folder to a Git repository of yours (public, or reachable by the trial).
2. In ADT, connected to the trial: create a package of your own under `ZLOCAL`, then with
   *abapGit Repositories* (abapGit for ADT): *Link* the repository to the package, *Pull*, and
   *Activate* all the inactive objects. Note the result of each object and the exact text of each
   error in `results/activation.md`.
3. Open the service binding `ZRT_UI_TRAVEL_O4CRG`, press *Publish*, select the root entity and
   open the *Preview* of Fiori elements; copy its URL.
4. Record the scenarios of SAP Fiori elements:
   `node scripts/fe-record-trial.mjs --url <preview URL> --release <release of the trial>`
   (from the repository of Open RAP Runtime).
5. Keep in `results/` the `$metadata` of the service
   (`/sap/opu/odata4/sap/zrt_ui_travel_o4crg/srvd/sap/zrt_ui_travelcrg/0001/$metadata`) for the comparison of D100.

The trial account lasts 30 days by default: repeat these steps on a new account or a new release.
Objects of this repository:

- ZBP_RT_R_TRAVEL → ZBP_RT_R_TRAVELCRG (CLAS)
- ZRT_A_DISCOUNT → ZRT_A_DISCOUNTCRG (DDLS)
- ZRT_BOOKING → ZRT_BOOKINGCRG (TABL)
- ZRT_C_BOOKING → ZRT_C_BOOKINGCRG (DCLS, DDLS, DDLX)
- ZRT_C_TRAVEL → ZRT_C_TRAVELCRG (BDEF, DCLS, DDLS, DDLX)
- ZRT_D_BOOKING → ZRT_D_BOOKINGCRG (TABL)
- ZRT_D_TRAVEL → ZRT_D_TRAVELCRG (TABL)
- ZRT_R_BOOKING → ZRT_R_BOOKINGCRG (DDLS)
- ZRT_R_TRAVEL → ZRT_R_TRAVELCRG (BDEF, DCLS, DDLS)
- ZRT_TRAVEL → ZRT_TRAVELCRG (MSAG, TABL)
- ZRT_UI_TRAVEL → ZRT_UI_TRAVELCRG (SRVD)
- ZRT_UI_TRAVEL_O4 → ZRT_UI_TRAVEL_O4CRG (SRVB)
