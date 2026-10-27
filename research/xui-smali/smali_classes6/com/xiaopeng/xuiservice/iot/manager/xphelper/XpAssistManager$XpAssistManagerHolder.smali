.class Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$XpAssistManagerHolder;
.super Ljava/lang/Object;
.source "XpAssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XpAssistManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$XpAssistManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900()Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;
    .locals 1

    .line 60
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager$XpAssistManagerHolder;->instance:Lcom/xiaopeng/xuiservice/iot/manager/xphelper/XpAssistManager;

    return-object v0
.end method
