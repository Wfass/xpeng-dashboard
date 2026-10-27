.class final enum Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;
.super Ljava/lang/Enum;
.source "AppLifeCycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CycleStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

.field public static final enum CREATED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

.field public static final enum DESTROYED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

.field public static final enum PAUSED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

.field public static final enum RESUMED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

.field public static final enum STARTED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

.field public static final enum STOPPED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

.field public static final enum TOP:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 117
    new-instance v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    const/4 v1, 0x0

    const-string v2, "CREATED"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->CREATED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    const/4 v2, 0x1

    const-string v3, "STARTED"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->STARTED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    const/4 v3, 0x2

    const-string v4, "RESUMED"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->RESUMED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    const/4 v4, 0x3

    const-string v5, "PAUSED"

    invoke-direct {v0, v5, v4}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->PAUSED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    const/4 v5, 0x4

    const-string v6, "STOPPED"

    invoke-direct {v0, v6, v5}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->STOPPED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    const/4 v6, 0x5

    const-string v7, "DESTROYED"

    invoke-direct {v0, v7, v6}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->DESTROYED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    const/4 v7, 0x6

    const-string v8, "TOP"

    invoke-direct {v0, v8, v7}, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->TOP:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    sget-object v8, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->CREATED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    aput-object v8, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->STARTED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->RESUMED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->PAUSED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->STOPPED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->DESTROYED:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->TOP:Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->$VALUES:[Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;
    .locals 1

    .line 117
    const-class v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;
    .locals 1

    .line 117
    sget-object v0, Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->$VALUES:[Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/account/utils/AppLifeCycleHelper$CycleStatus;

    return-object v0
.end method
