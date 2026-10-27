.class public Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;
.super Ljava/lang/Object;
.source "SoundResourceLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundThemeWrapper"
.end annotation


# instance fields
.field public playRscMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;",
            ">;"
        }
    .end annotation
.end field

.field public previewRscMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;",
            ">;"
        }
    .end annotation
.end field

.field public theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

.field public themeId:I

.field public themeRscPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/soundresource/SoundResourceLoader$SoundThemeWrapper;->theme:Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    .line 108
    return-void
.end method
