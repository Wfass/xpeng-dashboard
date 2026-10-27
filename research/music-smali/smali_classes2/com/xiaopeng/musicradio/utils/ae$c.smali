.class public Lcom/xiaopeng/musicradio/utils/ae$c;
.super Ljava/lang/Object;
.source "HomePreInflateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/utils/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/utils/ae$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/utils/ae$c;->a:Ljava/util/List;

    return-void
.end method

.method private static b(I)Lcom/xiaopeng/musicradio/utils/ae$b;
    .locals 1

    .line 208
    new-instance v0, Lcom/xiaopeng/musicradio/utils/ae$b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/utils/ae$b;-><init>(I)V

    return-object v0
.end method

.method private static b(II)Lcom/xiaopeng/musicradio/utils/ae$b;
    .locals 1

    .line 212
    new-instance v0, Lcom/xiaopeng/musicradio/utils/ae$b;

    invoke-direct {v0, p1, p0}, Lcom/xiaopeng/musicradio/utils/ae$b;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/xiaopeng/musicradio/utils/ae$c;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/ae$c;->a:Ljava/util/List;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ae$c;->b(I)Lcom/xiaopeng/musicradio/utils/ae$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(II)Lcom/xiaopeng/musicradio/utils/ae$c;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/ae$c;->a:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/ae$c;->b(II)Lcom/xiaopeng/musicradio/utils/ae$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/utils/ae$b;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/ae$c;->a:Ljava/util/List;

    return-object v0
.end method
