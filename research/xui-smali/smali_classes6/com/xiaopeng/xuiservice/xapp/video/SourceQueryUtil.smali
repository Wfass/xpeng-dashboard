.class public Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryUtil;
.super Ljava/lang/Object;
.source "SourceQueryUtil.java"


# static fields
.field private static CODE_SUCCESS:I = 0x0

.field private static final KEY_RESPONSE_APP_NAME:Ljava/lang/String; = "app_name"

.field private static final KEY_RESPONSE_CODE:Ljava/lang/String; = "code"

.field private static final KEY_RESPONSE_DATA:Ljava/lang/String; = "data"

.field private static final KEY_RESPONSE_ICON_INFO:Ljava/lang/String; = "icon_info"

.field private static final KEY_RESPONSE_LINK:Ljava/lang/String; = "link"

.field private static final KEY_RESPONSE_LOGO:Ljava/lang/String; = "logo"

.field private static final KEY_RESPONSE_NAME:Ljava/lang/String; = "name"

.field private static final KEY_RESPONSE_PKG_NAME:Ljava/lang/String; = "pkg_name"

.field private static final KEY_RESPONSE_POSTER:Ljava/lang/String; = "poster"

.field private static final KEY_RESPONSE_SOURCE:Ljava/lang/String; = "source"

.field private static final TAG:Ljava/lang/String; = "SourceQueryUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/16 v0, 0xc8

    sput v0, Lcom/xiaopeng/xuiservice/xapp/video/SourceQueryUtil;->CODE_SUCCESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
