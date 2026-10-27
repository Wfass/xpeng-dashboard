.class Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
.super Ljava/lang/Object;
.source "MaterialButtonToggleGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/MaterialButtonToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final e:Lakf;


# instance fields
.field a:Lakf;

.field b:Lakf;

.field c:Lakf;

.field d:Lakf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 829
    new-instance v0, Lakd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lakd;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->e:Lakf;

    return-void
.end method

.method constructor <init>(Lakf;Lakf;Lakf;Lakf;)V
    .locals 0

    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a:Lakf;

    .line 839
    iput-object p3, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->b:Lakf;

    .line 840
    iput-object p4, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->c:Lakf;

    .line 841
    iput-object p2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->d:Lakf;

    return-void
.end method

.method public static a(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
    .locals 3

    .line 856
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a:Lakf;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->d:Lakf;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->e:Lakf;

    invoke-direct {v0, v1, p0, v2, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;-><init>(Lakf;Lakf;Lakf;Lakf;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
    .locals 0

    .line 846
    invoke-static {p1}, Lcom/google/android/material/internal/u;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->b(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
    .locals 3

    .line 861
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->e:Lakf;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->b:Lakf;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->c:Lakf;

    invoke-direct {v0, v1, v1, v2, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;-><init>(Lakf;Lakf;Lakf;Lakf;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;Landroid/view/View;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
    .locals 0

    .line 851
    invoke-static {p1}, Lcom/google/android/material/internal/u;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->b(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
    .locals 3

    .line 866
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    iget-object v1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->a:Lakf;

    sget-object v2, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->e:Lakf;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->b:Lakf;

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;-><init>(Lakf;Lakf;Lakf;Lakf;)V

    return-object v0
.end method

.method public static d(Lcom/google/android/material/button/MaterialButtonToggleGroup$b;)Lcom/google/android/material/button/MaterialButtonToggleGroup$b;
    .locals 3

    .line 871
    new-instance v0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;

    sget-object v1, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->e:Lakf;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->d:Lakf;

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;->c:Lakf;

    invoke-direct {v0, v1, v2, v1, p0}, Lcom/google/android/material/button/MaterialButtonToggleGroup$b;-><init>(Lakf;Lakf;Lakf;Lakf;)V

    return-object v0
.end method
