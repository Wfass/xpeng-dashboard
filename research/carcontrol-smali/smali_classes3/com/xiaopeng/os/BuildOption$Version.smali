.class public Lcom/xiaopeng/os/BuildOption$Version;
.super Ljava/lang/Object;
.source "BuildOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/os/BuildOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# static fields
.field public static final VERSION_CODE:I

.field public static final VERSION_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ro.xos.build.version.code"

    .line 7
    invoke-static {v0}, Lcom/xiaopeng/os/BuildOption;->access$000(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xiaopeng/os/BuildOption$Version;->VERSION_CODE:I

    const-string v0, "ro.xos.build.version.name"

    .line 8
    invoke-static {v0}, Lcom/xiaopeng/os/BuildOption;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/os/BuildOption$Version;->VERSION_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
