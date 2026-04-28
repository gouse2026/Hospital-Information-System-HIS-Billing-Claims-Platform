#!/bin/bash

DB="../db/claims.db"

echo "Total Claims:"
sqlite3 $DB "SELECT COUNT(*) FROM claims;"

echo "Rejected Claims:"
sqlite3 $DB "SELECT COUNT(*) FROM claims WHERE status='REJECTED';"

echo "Approved Claims:"
sqlite3 $DB "SELECT COUNT(*) FROM claims WHERE status='APPROVED';"
