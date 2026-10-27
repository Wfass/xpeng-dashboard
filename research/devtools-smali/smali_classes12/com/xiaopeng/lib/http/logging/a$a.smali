.class Lcom/xiaopeng/lib/http/logging/a$a;
.super Ljava/lang/Object;
.source "LogCacher.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/logging/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/logging/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field Ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Vf:Lcom/xiaopeng/lib/http/logging/a;

.field code:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/http/logging/a;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/logging/a$a;->Ve:Ljava/util/List;

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/a$a;->Vf:Lcom/xiaopeng/lib/http/logging/a;

    .line 87
    return-void
.end method


# virtual methods
.method public code(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/xiaopeng/lib/http/logging/a$a;->code:I

    .line 92
    return-void
.end method

.method public end()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/a$a;->Vf:Lcom/xiaopeng/lib/http/logging/a;

    invoke-static {v0, p0}, Lcom/xiaopeng/lib/http/logging/a;->a(Lcom/xiaopeng/lib/http/logging/a;Lcom/xiaopeng/lib/http/logging/a$a;)V

    .line 102
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/a$a;->Ve:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method
