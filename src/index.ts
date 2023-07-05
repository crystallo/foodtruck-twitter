import express from "express";
import { dynamodbDescribeTable, dynamodbScanTable, getAllScanResults } from "./aws"
import { setRules } from "./twitter";
import { Rule } from "./types/twitter";
import { Vendor } from "./types/vendor";
import dotenv from "dotenv";
import healthCheck from './healthCheck';

dotenv.config();

const init = async () => {
    try {
        // note: not the best approach with large dataset
        const vendors = await getAllScanResults<Vendor>(process.env.AWS_VENDORS_TABLE_NAME ?? '');
        const vendorList = vendors.map((vendor) => vendor.twitterId);

        const app = express();
        app.use('/', healthCheck);
        app.listen(process.env.PORT, () => console.log(`HealthCheck listening on port ${process.env.PORT}`))
    } catch (e) {
        if (e instanceof Error) {
            console.log(e.message);
            process.exit(1);
        }
    }

}

init();