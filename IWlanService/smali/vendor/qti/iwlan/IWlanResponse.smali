.class public Lvendor/qti/iwlan/IWlanResponse;
.super Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;
.source "IWlanResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mProxy:Lvendor/qti/iwlan/IWlanProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lvendor/qti/iwlan/IWlanIndication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/iwlan/IWlanResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lvendor/qti/iwlan/IWlanProxy;)V
    .locals 0
    .param p1, "proxy"    # Lvendor/qti/iwlan/IWlanProxy;

    .line 43
    invoke-direct {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanResponse$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    .line 45
    return-void
.end method

.method static dataCallResultListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    .local p0, "dataCallResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 83
    .local v2, "dataCall":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    const-string v3, "--- Data Call ---"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {v2}, Lvendor/qti/iwlan/IWlanResponse;->setDataCallResponseToString(Landroid/hardware/radio/V1_4/SetupDataCallResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .end local v2    # "dataCall":Landroid/hardware/radio/V1_4/SetupDataCallResult;
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static iwlanDataRegStateResultToString(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RegState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;->regState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Reason for denial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;->reasonForDenial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static qualifiedNetworksListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 97
    .local p0, "qualifiedNetworksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;

    .line 100
    .local v2, "qNetwork":Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;
    iget-object v3, v2, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->networks:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->networks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    iget-object v3, v2, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->networks:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 105
    .local v3, "prefNw":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pref network for apnType  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->apnType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 101
    .end local v3    # "prefNw":I
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No available networks for apnType  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;->apnType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .end local v2    # "qNetwork":Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;
    :goto_2
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private responseDataCallList(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 191
    .local p2, "dataCallResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lvendor/qti/iwlan/IWlanProxy;->processResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;ZLjava/lang/String;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v0

    .line 193
    .local v0, "rr":Lvendor/qti/iwlan/IWlanRequest;
    if-eqz v0, :cond_0

    .line 194
    iget-object v1, v0, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lvendor/qti/iwlan/IWlanResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 197
    :cond_0
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v1, v0}, Lvendor/qti/iwlan/IWlanProxy;->decrementWakeLock(Lvendor/qti/iwlan/IWlanRequest;)V

    .line 198
    return-void
.end method

.method private responseDataRegistrationState(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .param p2, "state"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;

    .line 201
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    sget-object v1, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lvendor/qti/iwlan/IWlanProxy;->processResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;ZLjava/lang/String;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v0

    .line 203
    .local v0, "rr":Lvendor/qti/iwlan/IWlanRequest;
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, v0, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lvendor/qti/iwlan/IWlanResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 207
    :cond_0
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v1, v0}, Lvendor/qti/iwlan/IWlanProxy;->decrementWakeLock(Lvendor/qti/iwlan/IWlanRequest;)V

    .line 208
    return-void
.end method

.method static responseInfoToString(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->serial:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", RadioError = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;->error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private responseQualifiedNetworksChanged(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p2, "qualifiedNetworksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;>;"
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    sget-object v1, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lvendor/qti/iwlan/IWlanProxy;->processResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;ZLjava/lang/String;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v0

    .line 214
    .local v0, "rr":Lvendor/qti/iwlan/IWlanRequest;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, v0, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lvendor/qti/iwlan/IWlanResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 218
    :cond_0
    iget-object v1, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v1, v0}, Lvendor/qti/iwlan/IWlanProxy;->decrementWakeLock(Lvendor/qti/iwlan/IWlanRequest;)V

    .line 219
    return-void
.end method

.method private responseSetupDataCall(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .param p2, "setupDataCallResult"    # Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 173
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lvendor/qti/iwlan/IWlanProxy;->processResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;ZLjava/lang/String;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v0

    .line 175
    .local v0, "rr":Lvendor/qti/iwlan/IWlanRequest;
    if-eqz v0, :cond_0

    .line 176
    iget-object v1, v0, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lvendor/qti/iwlan/IWlanResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 178
    :cond_0
    return-void
.end method

.method private responseVoid(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .param p2, "tag"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lvendor/qti/iwlan/IWlanProxy;->processResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;ZLjava/lang/String;)Lvendor/qti/iwlan/IWlanRequest;

    move-result-object v0

    .line 183
    .local v0, "rr":Lvendor/qti/iwlan/IWlanRequest;
    if-eqz v0, :cond_0

    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, "ret":Ljava/lang/Object;
    iget-object v2, v0, Lvendor/qti/iwlan/IWlanRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lvendor/qti/iwlan/IWlanResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 187
    .end local v1    # "ret":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;
    .param p1, "ret"    # Ljava/lang/Object;

    .line 53
    if-eqz p0, :cond_0

    .line 54
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lvendor/qti/iwlan/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lvendor/qti/iwlan/AsyncResult;

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    :cond_0
    return-void
.end method

.method static setDataCallResponseToString(Landroid/hardware/radio/V1_4/SetupDataCallResult;)Ljava/lang/String;
    .locals 5
    .param p0, "setupDataCallResult"    # Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v0, "b":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail Cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->cause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Suggested Retry Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->suggestedRetryTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Active  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->active:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Type  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Addresses  = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->addresses:Ljava/util/ArrayList;

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", DNSes  = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->dnses:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", Gateways  = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->gateways:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", P-CSCFs  = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->pcscf:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MTU  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/radio/V1_4/SetupDataCallResult;->mtu:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public acknowledgeRequest(I)V
    .locals 1
    .param p1, "serial"    # I

    .line 168
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v0, p1}, Lvendor/qti/iwlan/IWlanProxy;->processRequestAck(I)V

    .line 169
    return-void
.end method

.method public deactivateDataCallResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;)V
    .locals 3
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;

    .line 127
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    const-string v2, "deactivateDataCallResponse"

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lvendor/qti/iwlan/IWlanResponse;->responseVoid(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public getAllQualifiedNetworksResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p2, "qualifiedNetworksList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;>;"
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllQualifiedNetworksResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lvendor/qti/iwlan/IWlanResponse;->qualifiedNetworksListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanResponse;->responseQualifiedNetworksChanged(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/util/ArrayList;)V

    .line 158
    return-void
.end method

.method public getDataCallListResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "dataCallResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataCallListResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lvendor/qti/iwlan/IWlanResponse;->dataCallResultListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanResponse;->responseDataCallList(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Ljava/util/ArrayList;)V

    .line 140
    return-void
.end method

.method public getDataRegistrationStateResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)V
    .locals 4
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .param p2, "state"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;

    .line 147
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataRegistrationStateResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lvendor/qti/iwlan/IWlanResponse;->iwlanDataRegStateResultToString(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanResponse;->responseDataRegistrationState(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Lvendor/qti/hardware/data/iwlan/V1_0/IWlanDataRegStateResult;)V

    .line 149
    return-void
.end method

.method public setupDataCallResponse(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V
    .locals 5
    .param p1, "responseInfo"    # Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;
    .param p2, "setupDataCallResult"    # Landroid/hardware/radio/V1_4/SetupDataCallResult;

    .line 118
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupDataCallResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lvendor/qti/iwlan/IWlanResponse;->responseInfoToString(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanResponse;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lvendor/qti/iwlan/IWlanResponse;->setDataCallResponseToString(Landroid/hardware/radio/V1_4/SetupDataCallResult;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-direct {p0, p1, p2}, Lvendor/qti/iwlan/IWlanResponse;->responseSetupDataCall(Lvendor/qti/hardware/data/iwlan/V1_0/IWlanResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V

    .line 121
    return-void
.end method
