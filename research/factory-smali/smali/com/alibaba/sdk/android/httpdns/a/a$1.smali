.class Lcom/alibaba/sdk/android/httpdns/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/beacon/Beacon$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/sdk/android/httpdns/a/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/a/a$1;->b:Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/beacon/Beacon$Config;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/a/a$1;->b:Lcom/alibaba/sdk/android/httpdns/a/a;

    invoke-static {v0, p1}, Lcom/alibaba/sdk/android/httpdns/a/a;->a(Lcom/alibaba/sdk/android/httpdns/a/a;Ljava/util/List;)V

    return-void
.end method
