.class Lcom/xiaopeng/musicradio/commonui/base/b$a;
.super Ljava/lang/Object;
.source "FragmentContextWrapper.java"

# interfaces
.implements Lcom/bumptech/glide/manager/RequestManagerTreeNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/base/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/commonui/base/b$1;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescendants()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/RequestManager;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
