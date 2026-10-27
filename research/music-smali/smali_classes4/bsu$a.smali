.class Lbsu$a;
.super Ljava/lang/Object;
.source "NeteaseUserVipModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbsu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lbsu;

    invoke-direct {v0}, Lbsu;-><init>()V

    sput-object v0, Lbsu$a;->a:Lbsu;

    return-void
.end method
