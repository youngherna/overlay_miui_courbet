.class public Lvendor/qti/iwlan/IWlanDataService;
.super Landroid/telephony/data/DataService;
.source "IWlanDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;
    }
.end annotation


# static fields
.field private static final DATA_CALL_LIST_CHANGED:I = 0x4

.field private static final DEACTIVATE_DATA_CALL_COMPLETE:I = 0x2

.field private static final REQUEST_DATA_CALL_LIST_COMPLETE:I = 0x3

.field private static final SETUP_DATA_CALL_COMPLETE:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field provider:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lvendor/qti/iwlan/IWlanDataService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/telephony/data/DataService;-><init>()V

    return-void
.end method

.method static synthetic lambda$convertDataCallResult$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 229
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$convertDataCallResult$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 247
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$convertDataCallResult$2(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 263
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$convertDataCallResult$3(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 279
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public convertDataCallResult(Landroid/hardware/radio/V1_4/SetupDataCallResult;)Landroid/telephony/data/DataCallResponse;
    .locals 17
    .param p1, "dcResult"    # Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 226
    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    iget-object v0, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$hrVGEyo3G5a9ffqcwTJj0esTzBw;->INSTANCE:Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$hrVGEyo3G5a9ffqcwTJj0esTzBw;

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    .line 230
    .local v2, "addresses":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 231
    .local v3, "laList":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    const-string v4, ", exception = "

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 232
    array-length v6, v2

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v0, v2, v7

    .line 233
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 234
    .end local v0    # "address":Ljava/lang/String;
    .local v8, "address":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 237
    :cond_1
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, v8}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "la":Landroid/net/LinkAddress;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    nop

    .end local v0    # "la":Landroid/net/LinkAddress;
    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v9, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown address: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v8    # "address":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 247
    :cond_2
    iget-object v0, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v6, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$bVjJxPK2WEFkgQmYA2GBXu9NDqA;->INSTANCE:Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$bVjJxPK2WEFkgQmYA2GBXu9NDqA;

    invoke-interface {v0, v6}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 248
    .local v6, "dnses":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 249
    .local v7, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz v6, :cond_3

    .line 250
    array-length v8, v6

    move v9, v5

    :goto_2
    if-ge v9, v8, :cond_3

    aget-object v0, v6, v9

    .line 251
    .local v0, "dns":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 254
    .end local v0    # "dns":Ljava/lang/String;
    .local v10, "dns":Ljava/lang/String;
    :try_start_1
    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 255
    .local v0, "ia":Ljava/net/InetAddress;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 258
    goto :goto_3

    .line 256
    .end local v0    # "ia":Ljava/net/InetAddress;
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v11, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown dns: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v10    # "dns":Ljava/lang/String;
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 263
    :cond_3
    iget-object v0, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v8, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$ThFYdsBg3cKGFuW16CBhaRmyuSs;->INSTANCE:Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$ThFYdsBg3cKGFuW16CBhaRmyuSs;

    invoke-interface {v0, v8}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/String;

    .line 264
    .local v8, "gateways":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 265
    .local v9, "gatewayList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz v8, :cond_4

    .line 266
    array-length v10, v8

    move v11, v5

    :goto_4
    if-ge v11, v10, :cond_4

    aget-object v0, v8, v11

    .line 267
    .local v0, "gateway":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 270
    .end local v0    # "gateway":Ljava/lang/String;
    .local v12, "gateway":Ljava/lang/String;
    :try_start_2
    invoke-static {v12}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 271
    .local v0, "ia":Ljava/net/InetAddress;
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    goto :goto_5

    .line 272
    .end local v0    # "ia":Ljava/net/InetAddress;
    :catch_2
    move-exception v0

    .line 273
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v13, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown gateway: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v12    # "gateway":Ljava/lang/String;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 279
    :cond_4
    iget-object v0, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v10, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$sxNqp1GJUIHZiATctZ0VsTKQIbQ;->INSTANCE:Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$sxNqp1GJUIHZiATctZ0VsTKQIbQ;

    invoke-interface {v0, v10}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/String;

    .line 280
    .local v10, "pcscfs":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 281
    .local v11, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    if-eqz v10, :cond_6

    .line 282
    array-length v12, v10

    :goto_6
    if-ge v5, v12, :cond_5

    aget-object v0, v10, v5

    .line 283
    .local v0, "pcscf":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 286
    .end local v0    # "pcscf":Ljava/lang/String;
    .local v13, "pcscf":Ljava/lang/String;
    :try_start_3
    invoke-static {v13}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 287
    .local v0, "ia":Ljava/net/InetAddress;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_3

    .line 290
    move-object/from16 v16, v2

    goto :goto_7

    .line 288
    .end local v0    # "ia":Ljava/net/InetAddress;
    :catch_3
    move-exception v0

    .line 289
    .local v0, "e":Ljava/net/UnknownHostException;
    sget-object v14, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "addresses":[Ljava/lang/String;
    .local v16, "addresses":[Ljava/lang/String;
    const-string v2, "Unknown pcscf: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Ljava/net/UnknownHostException;
    .end local v13    # "pcscf":Ljava/lang/String;
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v16

    goto :goto_6

    .end local v16    # "addresses":[Ljava/lang/String;
    .restart local v2    # "addresses":[Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v2

    .end local v2    # "addresses":[Ljava/lang/String;
    .restart local v16    # "addresses":[Ljava/lang/String;
    goto :goto_8

    .line 281
    .end local v16    # "addresses":[Ljava/lang/String;
    .restart local v2    # "addresses":[Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v2

    .line 295
    .end local v2    # "addresses":[Ljava/lang/String;
    .restart local v16    # "addresses":[Ljava/lang/String;
    :goto_8
    new-instance v0, Landroid/telephony/data/DataCallResponse$Builder;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$Builder;-><init>()V

    iget v2, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    .line 296
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setCause(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    .line 297
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setSuggestedRetryTime(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cid:I

    .line 298
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setId(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    .line 299
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setLinkStatus(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    .line 300
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setProtocolType(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget-object v2, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->ifname:Ljava/lang/String;

    .line 301
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setInterfaceName(Ljava/lang/String;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataCallResponse$Builder;->setAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v7}, Landroid/telephony/data/DataCallResponse$Builder;->setDnsAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0, v9}, Landroid/telephony/data/DataCallResponse$Builder;->setGatewayAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v11}, Landroid/telephony/data/DataCallResponse$Builder;->setPcscfAddresses(Ljava/util/List;)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    iget v2, v1, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    .line 306
    invoke-virtual {v0, v2}, Landroid/telephony/data/DataCallResponse$Builder;->setMtu(I)Landroid/telephony/data/DataCallResponse$Builder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Landroid/telephony/data/DataCallResponse$Builder;->build()Landroid/telephony/data/DataCallResponse;

    move-result-object v0

    .line 295
    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 215
    const-string v0, "IWlanDataService:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanDataService;->provider:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p2}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;->dump(Ljava/io/PrintWriter;)V

    .line 218
    :cond_0
    return-void
.end method

.method public onCreateDataServiceProvider(I)Landroid/telephony/data/DataService$DataServiceProvider;
    .locals 5
    .param p1, "slotId"    # I

    .line 203
    sget-object v0, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWlan data service created for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lvendor/qti/iwlan/IWlanDataService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 205
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    if-ltz p1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v2, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    invoke-direct {v2, p0, p1, v1}, Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;-><init>(Lvendor/qti/iwlan/IWlanDataService;ILvendor/qti/iwlan/IWlanDataService$1;)V

    iput-object v2, p0, Lvendor/qti/iwlan/IWlanDataService;->provider:Lvendor/qti/iwlan/IWlanDataService$IWlanDataServiceProvider;

    .line 210
    return-object v2

    .line 206
    :cond_1
    :goto_0
    sget-object v2, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to create iwlan data service with invalid slotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v1
.end method
