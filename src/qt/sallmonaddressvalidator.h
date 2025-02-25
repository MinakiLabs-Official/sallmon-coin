// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2017-2019 The Sallmon Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef SALLMON_QT_SALLMONADDRESSVALIDATOR_H
#define SALLMON_QT_SALLMONADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class SallmonAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit SallmonAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Sallmon address widget validator, checks for a valid sallmon address.
 */
class SallmonAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit SallmonAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // SALLMON_QT_SALLMONADDRESSVALIDATOR_H
