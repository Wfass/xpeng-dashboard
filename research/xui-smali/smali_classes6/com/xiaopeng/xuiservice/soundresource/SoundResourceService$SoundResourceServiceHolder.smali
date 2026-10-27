.class Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$SoundResourceServiceHolder;
.super Ljava/lang/Object;
.source "SoundResourceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundResourceServiceHolder"
.end annotation


# static fields
.field private static final instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;-><init>(Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$1;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$SoundResourceServiceHolder;->instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;
    .locals 1

    .line 61
    sget-object v0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService$SoundResourceServiceHolder;->instance:Lcom/xiaopeng/xuiservice/soundresource/SoundResourceService;

    return-object v0
.end method
