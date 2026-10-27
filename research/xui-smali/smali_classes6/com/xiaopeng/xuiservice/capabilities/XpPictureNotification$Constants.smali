.class Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants;
.super Ljava/lang/Object;
.source "XpPictureNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constants"
.end annotation


# static fields
.field public static bigPicMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$BigPicStyleObj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpPictureNotification$Constants;->bigPicMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
