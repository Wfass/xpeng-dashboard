.class Lzipkin2/storage/StorageComponent$1;
.super Ljava/lang/Object;
.source "StorageComponent.java"

# interfaces
.implements Lzipkin2/storage/AutocompleteTags;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzipkin2/storage/StorageComponent;->autocompleteTags()Lzipkin2/storage/AutocompleteTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzipkin2/storage/StorageComponent;


# direct methods
.method constructor <init>(Lzipkin2/storage/StorageComponent;)V
    .locals 0
    .param p1, "this$0"    # Lzipkin2/storage/StorageComponent;

    .line 33
    iput-object p1, p0, Lzipkin2/storage/StorageComponent$1;->this$0:Lzipkin2/storage/StorageComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeys()Lzipkin2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method

.method public getValues(Ljava/lang/String;)Lzipkin2/Call;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 39
    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method
