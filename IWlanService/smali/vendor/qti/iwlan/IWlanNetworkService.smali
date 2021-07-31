.class public Lvendor/qti/iwlan/IWlanNetworkService;
.super Landroid/telephony/NetworkService;
.source "IWlanNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;
    }
.end annotation


# static fields
.field private static final GET_REGISTRATION_STATE_COMPLETE:I = 0x1

.field private static final NETWORK_REGISTRATION_STATE_CHANGED:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field provider:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lvendor/qti/iwlan/IWlanNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/telephony/NetworkService;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 244
    const-string v0, "IWlanNetworkService:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lvendor/qti/iwlan/IWlanNetworkService;->provider:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-virtual {v0, p2}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;->dump(Ljava/io/PrintWriter;)V

    .line 246
    return-void
.end method

.method public onCreateNetworkServiceProvider(I)Landroid/telephony/NetworkService$NetworkServiceProvider;
    .locals 4
    .param p1, "slotId"    # I

    .line 232
    sget-object v0, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWlan network service created for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lvendor/qti/iwlan/IWlanNetworkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 234
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-ltz p1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance v1, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    invoke-direct {v1, p0, p1}, Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;-><init>(Lvendor/qti/iwlan/IWlanNetworkService;I)V

    iput-object v1, p0, Lvendor/qti/iwlan/IWlanNetworkService;->provider:Lvendor/qti/iwlan/IWlanNetworkService$IWlanNetworkServiceProvider;

    .line 239
    return-object v1

    .line 235
    :cond_1
    :goto_0
    sget-object v1, Lvendor/qti/iwlan/IWlanNetworkService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to IWlan network service with invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, 0x0

    return-object v1
.end method
