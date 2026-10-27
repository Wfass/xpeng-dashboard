.class public Lcom/xiaopeng/xuiservice/applist/operation/AppListTypes;
.super Ljava/lang/Object;
.source "AppListTypes.java"


# static fields
.field public static final ALL:[I

.field public static final GROUP_ACCESS_WEB_APP:I = 0xa

.field public static final GROUP_APPLET:I = 0xd

.field public static final GROUP_CARLINK_APP:I = 0xc

.field public static final GROUP_COPILOT:I = 0x0

.field public static final GROUP_FACTORY:I = 0x1

.field public static final GROUP_HICAR_APP:I = 0xb

.field public static final GROUP_INSTALLED:I = 0x3

.field public static final GROUP_PLACEHOLDER:I = 0x2

.field public static final GROUP_PRESET_APP_ENTRY:I = 0xe

.field public static final GROUP_RECOMMEND_SITE:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xuiservice/applist/operation/AppListTypes;->ALL:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0xa
        0xb
        0xc
        0xe
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
