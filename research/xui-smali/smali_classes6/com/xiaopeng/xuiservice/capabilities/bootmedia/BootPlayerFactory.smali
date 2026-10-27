.class public Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;
.super Ljava/lang/Object;
.source "BootPlayerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BootPlayerFactory"

.field private static mInstance:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->mInstance:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->mInstance:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    .line 9
    sput-object p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory;->mInstance:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;

    return-object p0
.end method

.method public static builder(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;
    .locals 1
    .param p0, "type"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;
    .param p1, "processor"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 55
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayerFactory$Builder;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/MediaType;Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)V

    return-object v0
.end method
