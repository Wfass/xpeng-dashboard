.class Lbta$a;
.super Ljava/lang/Object;
.source "VipDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbta;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lbta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbta;-><init>(Lbta$1;)V

    sput-object v0, Lbta$a;->a:Lbta;

    return-void
.end method
