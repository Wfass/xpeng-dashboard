.class final enum Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;
.super Ljava/lang/Enum;
.source "RealtimeStatusPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "REALTIME_QUEUE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

.field public static final enum vP:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

.field public static final enum vQ:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

.field public static final enum vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

.field public static final enum vS:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

.field private static final synthetic vT:[Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 82
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    const-string v1, "LTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    .line 83
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    const-string v1, "WIFI"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vP:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    .line 84
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    const-string v1, "BLUETOOTH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vQ:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    .line 85
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    const-string v1, "TEMP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    .line 86
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    const-string v1, "OTHERS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vS:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vO:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vP:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vQ:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vR:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vS:Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vT:[Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;
    .locals 1

    .line 81
    const-class v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;
    .locals 1

    .line 81
    sget-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->vT:[Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    invoke-virtual {v0}, [Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/devtools/presenter/aftersales/RealtimeStatusPresenter$REALTIME_QUEUE;

    return-object v0
.end method
