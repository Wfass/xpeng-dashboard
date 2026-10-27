.class public interface abstract Leg;
.super Ljava/lang/Object;
.source "SupportMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# virtual methods
.method public abstract a(Lfi;)Leg;
.end method

.method public abstract a(Ljava/lang/CharSequence;)Leg;
.end method

.method public abstract a()Lfi;
.end method

.method public abstract b(Ljava/lang/CharSequence;)Leg;
.end method

.method public abstract collapseActionView()Z
.end method

.method public abstract expandActionView()Z
.end method

.method public abstract getActionView()Landroid/view/View;
.end method

.method public abstract getAlphabeticModifiers()I
.end method

.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getIconTintList()Landroid/content/res/ColorStateList;
.end method

.method public abstract getIconTintMode()Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract getNumericModifiers()I
.end method

.method public abstract getTooltipText()Ljava/lang/CharSequence;
.end method

.method public abstract isActionViewExpanded()Z
.end method

.method public abstract setActionView(I)Landroid/view/MenuItem;
.end method

.method public abstract setActionView(Landroid/view/View;)Landroid/view/MenuItem;
.end method

.method public abstract setAlphabeticShortcut(CI)Landroid/view/MenuItem;
.end method

.method public synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 39
    invoke-interface {p0, p1}, Leg;->a(Ljava/lang/CharSequence;)Leg;

    move-result-object p1

    return-object p1
.end method

.method public abstract setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
.end method

.method public abstract setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
.end method

.method public abstract setNumericShortcut(CI)Landroid/view/MenuItem;
.end method

.method public abstract setShortcut(CCII)Landroid/view/MenuItem;
.end method

.method public abstract setShowAsAction(I)V
.end method

.method public abstract setShowAsActionFlags(I)Landroid/view/MenuItem;
.end method

.method public synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 39
    invoke-interface {p0, p1}, Leg;->b(Ljava/lang/CharSequence;)Leg;

    move-result-object p1

    return-object p1
.end method
