.class Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$InstanceHolder;
.super Ljava/lang/Object;
.source "XpPictureNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final picNotification:Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;-><init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$InstanceHolder;->picNotification:Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;
    .locals 1

    .line 36
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$InstanceHolder;->picNotification:Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;

    return-object v0
.end method
