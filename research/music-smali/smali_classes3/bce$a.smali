.class Lbce$a;
.super Ljava/lang/Object;
.source "KugouCollectVersionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbce;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lbce;

    invoke-direct {v0}, Lbce;-><init>()V

    sput-object v0, Lbce$a;->a:Lbce;

    return-void
.end method
