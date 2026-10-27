.class Larl$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "QualityDataConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larl;->a(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Larl;


# direct methods
.method constructor <init>(Larl;)V
    .locals 0

    .line 25
    iput-object p1, p0, Larl$1;->a:Larl;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
