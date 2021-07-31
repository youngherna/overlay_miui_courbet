.class public final synthetic Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$sxNqp1GJUIHZiATctZ0VsTKQIbQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$sxNqp1GJUIHZiATctZ0VsTKQIbQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$sxNqp1GJUIHZiATctZ0VsTKQIbQ;

    invoke-direct {v0}, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$sxNqp1GJUIHZiATctZ0VsTKQIbQ;-><init>()V

    sput-object v0, Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$sxNqp1GJUIHZiATctZ0VsTKQIbQ;->INSTANCE:Lvendor/qti/iwlan/-$$Lambda$IWlanDataService$sxNqp1GJUIHZiATctZ0VsTKQIbQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lvendor/qti/iwlan/IWlanDataService;->lambda$convertDataCallResult$3(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
