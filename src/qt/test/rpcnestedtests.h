// Copyright (c) 2016 The Bitcoin Core developers
// Copyright (c) 2017-2019 The Sallmon Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef SALLMON_QT_TEST_RPC_NESTED_TESTS_H
#define SALLMON_QT_TEST_RPC_NESTED_TESTS_H

#include <QObject>
#include <QTest>

#include "txdb.h"
#include "txmempool.h"

class RPCNestedTests : public QObject
{
    Q_OBJECT

    private Q_SLOTS:
    void rpcNestedTests();

private:
    CCoinsViewDB *pcoinsdbview;
};

#endif // SALLMON_QT_TEST_RPC_NESTED_TESTS_H
