.class Larp$a;
.super Ljava/lang/Object;
.source "Sp2DbMigrateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Larp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Larp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Larp;

    invoke-direct {v0}, Larp;-><init>()V

    sput-object v0, Larp$a;->a:Larp;

    return-void
.end method
