.class Lcom/xiaopeng/speech/vui/VuiSceneToolManager$Holder;
.super Ljava/lang/Object;
.source "VuiSceneToolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 935
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneToolManager;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneToolManager$1;)V

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$Holder;->Instance:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/speech/vui/VuiSceneToolManager;
    .locals 1

    .line 934
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiSceneToolManager$Holder;->Instance:Lcom/xiaopeng/speech/vui/VuiSceneToolManager;

    return-object v0
.end method
