.class Lcom/xiaopeng/commonfunc/b/d/a$a;
.super Ljava/lang/Object;
.source "IndivModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/b/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic nZ:Lcom/xiaopeng/commonfunc/b/d/a;

.field public oa:Ljava/lang/String;

.field public ob:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/xiaopeng/commonfunc/b/d/a;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$a;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/commonfunc/b/d/a;Lcom/xiaopeng/commonfunc/b/d/a$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/b/d/a$a;-><init>(Lcom/xiaopeng/commonfunc/b/d/a;)V

    return-void
.end method
