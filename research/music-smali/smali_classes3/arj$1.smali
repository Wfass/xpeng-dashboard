.class Larj$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "NetRadioProgramListConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larj;->a(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Larj;


# direct methods
.method constructor <init>(Larj;)V
    .locals 0

    .line 21
    iput-object p1, p0, Larj$1;->a:Larj;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
