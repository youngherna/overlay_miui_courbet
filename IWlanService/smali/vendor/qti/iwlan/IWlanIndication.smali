.class public Lvendor/qti/iwlan/IWlanIndication;
.super Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanIndication$Stub;
.source "IWlanIndication.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mProxy:Lvendor/qti/iwlan/IWlanProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lvendor/qti/iwlan/IWlanIndication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/iwlan/IWlanIndication;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lvendor/qti/iwlan/IWlanProxy;)V
    .locals 0
    .param p1, "proxy"    # Lvendor/qti/iwlan/IWlanProxy;

    .line 40
    invoke-direct {p0}, Lvendor/qti/hardware/data/iwlan/V1_0/IIWlanIndication$Stub;-><init>()V

    .line 41
    iput-object p1, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    .line 42
    return-void
.end method


# virtual methods
.method public dataCallListChangeIndication(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 48
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_4/SetupDataCallResult;>;"
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    const-string v2, "dataCallListChangeIndication"

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    sget-object v1, Lvendor/qti/iwlan/IWlanDataService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->sendAck(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->mDataCallListChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    new-instance v1, Lvendor/qti/iwlan/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lvendor/qti/iwlan/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lvendor/qti/iwlan/RegistrantList;->notifyRegistrants(Lvendor/qti/iwlan/AsyncResult;)V

    .line 51
    return-void
.end method

.method public dataRegistrationStateChangeIndication()V
    .locals 3

    .line 57
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    const-string v2, "networkRegistrationStateChangeIndication"

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    sget-object v1, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->sendAck(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->mDataRegistrationStateChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    invoke-virtual {v0}, Lvendor/qti/iwlan/RegistrantList;->notifyRegistrants()V

    .line 60
    return-void
.end method

.method public modemSupportNotPresent()V
    .locals 3

    .line 75
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/IWlanIndication;->TAG:Ljava/lang/String;

    const-string v2, "modemSupportNotPresent"

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    invoke-virtual {v0}, Lvendor/qti/iwlan/IWlanProxy;->modemSupportNotPresent()V

    .line 78
    return-void
.end method

.method public qualifiedNetworksChangeIndication(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;",
            ">;)V"
        }
    .end annotation

    .line 66
    .local p1, "qnlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/data/iwlan/V1_0/QualifiedNetworks;>;"
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->iwlanLog:Lvendor/qti/iwlan/IWlanLog;

    sget-object v1, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "qualifiedNetworksChangeIndication"

    invoke-virtual {v0, v1, v2}, Lvendor/qti/iwlan/IWlanLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    sget-object v1, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvendor/qti/iwlan/IWlanProxy;->sendAck(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanIndication;->mProxy:Lvendor/qti/iwlan/IWlanProxy;

    iget-object v0, v0, Lvendor/qti/iwlan/IWlanProxy;->mQualifiedNetworksChangedRegistrants:Lvendor/qti/iwlan/RegistrantList;

    new-instance v1, Lvendor/qti/iwlan/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1, v2}, Lvendor/qti/iwlan/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lvendor/qti/iwlan/RegistrantList;->notifyRegistrants(Lvendor/qti/iwlan/AsyncResult;)V

    .line 69
    return-void
.end method
