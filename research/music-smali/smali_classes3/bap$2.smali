.class Lbap$2;
.super Ljava/lang/Object;
.source "KugouHistoryMigration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbap;->b(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lbap;


# direct methods
.method constructor <init>(Lbap;Ljava/util/List;I)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbap$2;->c:Lbap;

    iput-object p2, p0, Lbap$2;->a:Ljava/util/List;

    iput p3, p0, Lbap$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 137
    iget-object v0, p0, Lbap$2;->c:Lbap;

    iget-object v1, p0, Lbap$2;->a:Ljava/util/List;

    iget v2, p0, Lbap$2;->b:I

    invoke-static {v0, v1, v2}, Lbap;->b(Lbap;Ljava/util/List;I)V

    return-void
.end method
