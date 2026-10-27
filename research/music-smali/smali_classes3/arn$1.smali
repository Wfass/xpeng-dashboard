.class Larn$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "StringListConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Larn;->a(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Larn;


# direct methods
.method constructor <init>(Larn;)V
    .locals 0

    .line 21
    iput-object p1, p0, Larn$1;->a:Larn;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
