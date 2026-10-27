.class Lbpa$a;
.super Ljava/lang/Object;
.source "CommandManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbpa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lbpa;

    invoke-direct {v0}, Lbpa;-><init>()V

    sput-object v0, Lbpa$a;->a:Lbpa;

    return-void
.end method
