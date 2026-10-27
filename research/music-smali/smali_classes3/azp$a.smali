.class Lazp$a;
.super Ljava/lang/Object;
.source "MediaConManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lazp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lazp;

    invoke-direct {v0}, Lazp;-><init>()V

    sput-object v0, Lazp$a;->a:Lazp;

    return-void
.end method
