.class public final enum Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;
.super Ljava/lang/Enum;
.source "StartNaviBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NaviType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

.field public static final enum POI:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

.field public static final enum WAYPOINT:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 234
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    const-string v1, "POI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->POI:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    .line 238
    new-instance v1, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    const-string v3, "WAYPOINT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->WAYPOINT:Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 230
    sput-object v3, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->$VALUES:[Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;
    .locals 1

    .line 230
    const-class v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;
    .locals 1

    .line 230
    sget-object v0, Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->$VALUES:[Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/protocol/node/navi/bean/StartNaviBean$NaviType;

    return-object v0
.end method
