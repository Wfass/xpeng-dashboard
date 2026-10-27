.class Lcom/xiaopeng/speech/vui/VuiSceneManager$Holder;
.super Ljava/lang/Object;
.source "VuiSceneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/VuiSceneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final Instance:Lcom/xiaopeng/speech/vui/VuiSceneManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1189
    new-instance v0, Lcom/xiaopeng/speech/vui/VuiSceneManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;-><init>(Lcom/xiaopeng/speech/vui/VuiSceneManager$1;)V

    sput-object v0, Lcom/xiaopeng/speech/vui/VuiSceneManager$Holder;->Instance:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/speech/vui/VuiSceneManager;
    .locals 1

    .line 1188
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiSceneManager$Holder;->Instance:Lcom/xiaopeng/speech/vui/VuiSceneManager;

    return-object v0
.end method
