.class public Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;
.super Landroid/telephony/data/QualifiedNetworksService;
.source "QualifiedNetworksServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;
    }
.end annotation


# static fields
.field private static final GET_QUALIFIED_NETWORKS_COMPLETE:I = 0x1

.field private static final QUALIFIED_NETWORKS_CHANGED:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field provider:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/telephony/data/QualifiedNetworksService;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 151
    const-string v0, "QualifiedNetworksServiceImpl:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->provider:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    invoke-virtual {v0, p2}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;->dump(Ljava/io/PrintWriter;)V

    .line 153
    return-void
.end method

.method public onCreateNetworkAvailabilityProvider(I)Landroid/telephony/data/QualifiedNetworksService$NetworkAvailabilityProvider;
    .locals 4
    .param p1, "slotIndex"    # I

    .line 139
    sget-object v0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Qualified Networks service created for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 141
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-ltz p1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v1, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    invoke-direct {v1, p0, p1}, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;-><init>(Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;I)V

    iput-object v1, p0, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->provider:Lvendor/qti/iwlan/QualifiedNetworksServiceImpl$NetworkAvailabilityProviderImpl;

    .line 146
    return-object v1

    .line 142
    :cond_1
    :goto_0
    sget-object v1, Lvendor/qti/iwlan/QualifiedNetworksServiceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to create QNP service with invalid slotIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v1, 0x0

    return-object v1
.end method
