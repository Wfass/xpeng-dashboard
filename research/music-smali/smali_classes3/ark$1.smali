.class Lark$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "NeteaseSongInfoListConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lark;->a(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/xiaopeng/musicradio/bean/db/SongInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lark;


# direct methods
.method constructor <init>(Lark;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lark$1;->a:Lark;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
