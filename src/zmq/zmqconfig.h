// Copyright (c) 2014 The Bitcoin Core developers
// Copyright (c) 2017-2019 The Sallmon Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef SALLMON_ZMQ_ZMQCONFIG_H
#define SALLMON_ZMQ_ZMQCONFIG_H

#if defined(HAVE_CONFIG_H)
#include "config/sallmon-config.h"
#endif

#include <stdarg.h>
#include <string>

#if ENABLE_ZMQ
#include <zmq.h>
#endif

#include "primitives/block.h"
#include "primitives/transaction.h"

void zmqError(const char *str);

#endif // SALLMON_ZMQ_ZMQCONFIG_H
