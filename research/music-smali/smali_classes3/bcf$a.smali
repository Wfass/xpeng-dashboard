.class Lbcf$a;
.super Ljava/lang/Object;
.source "KugouFetchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbcf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lbcf;

    invoke-direct {v0}, Lbcf;-><init>()V

    sput-object v0, Lbcf$a;->a:Lbcf;

    return-void
.end method
