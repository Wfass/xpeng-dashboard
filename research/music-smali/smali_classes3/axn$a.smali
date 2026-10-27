.class Laxn$a;
.super Ljava/lang/Object;
.source "ProgramHistoryLoadingModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Laxn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Laxn;

    invoke-direct {v0}, Laxn;-><init>()V

    sput-object v0, Laxn$a;->a:Laxn;

    return-void
.end method
